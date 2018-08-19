<?php
if (! defined ( 'IN_NMSD' )) {
	exit ();
}
// $statement->errorInfo ()[2]
class dbOperations {
	var $pdo = NULL;
	var $prefix = NULL;
	public function __construct($dbhost, $dbname, $dbuser, $dbpass, $tablePrefix) {
		$this->prefix = $tablePrefix;
		$this->pdo = new PDO ( "mysql:host=$dbhost;dbname=$dbname", $dbuser, $dbpass );
		$this->pdo->exec ( "SET CHARACTER SET utf8" );
	}
	/*
	 * ****************************************************************************************************
	 * *** Allgemeine Datenbankfunktionen
	 * ****************************************************************************************************
	 */
	public function insert($table, $dataFields) {
		$fullTable = $this->prefix . $table;
		$columns = implode ( ', ', array_keys ( $dataFields ) );
		$values = rtrim ( str_repeat ( '?, ', sizeof ( $dataFields ) ), ', ' );
		$statement = $this->pdo->prepare ( "INSERT INTO `$fullTable` ($columns) VALUES ($values)" );
		if ($statement->execute ( array_values ( $dataFields ) )) {
			$id = $this->pdo->lastInsertId ();
			return ($id == 0) ? 1 : $id;
		} else {
			echo "SQL Error <br />";
			echo $statement->queryString . "<br />";
			echo $statement->errorInfo () [2];
			return false;
		}
	}
	public function select() {
	}
	public function update($table, $dataFields, $where) {
		$fullTable = $this->prefix . $table;
		$whereColumns = self::setWhere ( $where );
		$columns = self::setColumns ( $dataFields );
		$sql = "UPDATE `$fullTable` SET $columns WHERE $whereColumns";
		$dataFields = array_merge ( $dataFields, $where );
		$statement = $this->pdo->prepare ( $sql );
		if ($statement->execute ( $dataFields )) {
			return true;
		} else {
			echo "SQL Error <br />";
			echo $statement->queryString . "<br />";
			echo $statement->errorInfo () [2];
		}
	}
	public function delete($table, $where) {
		$fullTable = $this->prefix . $table;
		$whereColumns = self::setWhere ( $where );
		$sql = "DELETE FROM `$fullTable` WHERE $whereColumns";
		$statement = $this->pdo->prepare ( $sql );
		if ($statement->execute ( $where )) {
			return true;
		} else {
			echo "SQL Error <br />";
			echo $statement->queryString . "<br />";
			echo $statement->errorInfo () [2];
			return false;
		}
	}
	public function getWholeTable($table) {
		$fullTable = $this->prefix . $table;
		$rows = array ();
		$statement = $this->pdo->prepare ( "SELECT * FROM `$fullTable` ORDER BY name ASC" ); // ,IF(german IS NULL or german = '', name, german) as name
		$statement->execute ();
		if ($statement->rowCount () > 0) {
			$rows = $statement->fetchAll ( PDO::FETCH_UNIQUE | PDO::FETCH_ASSOC );
		}
		return $rows;
	}
	function setColumns($columns) {
		$retString = '';
		foreach ( $columns as $column => $value ) {
			$retString .= "`$column` = :$column, ";
		}
		return rtrim ( $retString, ', ' );
	}
	function setWhere($columns) {
		$retString = '';
		foreach ( $columns as $column => $value ) {
			$retString .= "`$column` = :$column AND ";
		}
		return rtrim ( $retString, ' AND ' );
	}
	/*
	 * ****************************************************************************************************
	 * *** Galaxies
	 * ****************************************************************************************************
	 */
	
	/*
	 * ****************************************************************************************************
	 * *** Systems
	 * ****************************************************************************************************
	 */
	public function getSystems($galaxy) {
		$fullTable = $this->prefix . 'systems';
		$systems = array ();
		$statement = $this->pdo->prepare ( "SELECT * FROM $fullTable WHERE galaxyId = ? ORDER BY name ASC" );
		$statement->execute ( array (
				$galaxy
		) );
		if ($statement->rowCount () > 0) {
			$systems = $statement->fetchAll ( PDO::FETCH_UNIQUE | PDO::FETCH_ASSOC );
		}
		return $systems;
	}
	public function deleteSystem($systemId) {
		$statement = $this->pdo->prepare ( "DELETE `planet-resource` FROM `planet-resource` LEFT JOIN `planets` ON `planet-resource`.`planetId` = `planets`.`id` WHERE `systemId` = ? " );
		$statement->execute ( array (
				$systemId
		) );
		$statement = $this->pdo->prepare ( "DELETE FROM `planets` WHERE `systemId` = ? ORDER BY `planetMoonId` DESC" );
		$statement->execute ( array (
				$systemId
		) );
		$this->delete ( 'systems', array (
				'id' => $systemId
		) );
	}
	public function getSystemResources($systemId) {
		$fullTable1 = $this->prefix . 'planets';
		$fullTable2 = $this->prefix . 'commodities';
		$fullTable3 = $this->prefix . 'planet-resource';
		$statement = $this->pdo->prepare ( "SELECT `$fullTable2`.*, `$fullTable1`.name AS planetName, $fullTable1.id AS planetId FROM `$fullTable2`, `$fullTable1`, `$fullTable3` WHERE `$fullTable1`.systemId = ? AND `$fullTable1`.id = `$fullTable3`.`planetId` AND `$fullTable2`.id = `$fullTable3`.`commodityId` ORDER BY `$fullTable2`.name");
		$statement->execute ( array (
				$systemId
		) );
		$resources = array ();
		if ($statement->rowCount () > 0) {
			while ( $row = $statement->fetch () ) {
				$resourceId = $row ['id'];
				$planetId = $row ['planetId'];
				$planetName = $row ['planetName'];
				if (isset ( $resources [$resourceId] )) {
					$resources [$resourceId] [$planetId] = $planetName;
				} else {
					$resources [$resourceId] = array (
							$planetId => $planetName
					);
				}
			}
		}
		return $resources;
	}
	
	/*
	 * ****************************************************************************************************
	 * *** Planets
	 * ****************************************************************************************************
	 */
	public function getSystemPlanets($system) {
		$fullTable = $this->prefix . 'planets';
		$planets = array ();
		$statement = $this->pdo->prepare ( "SELECT * FROM $fullTable WHERE systemId = ? ORDER BY name ASC" );
		$statement->execute ( $system );
		if ($statement->rowCount () > 0) {
			$planets = $statement->fetchAll ( PDO::FETCH_UNIQUE | PDO::FETCH_ASSOC );
		}
		return $planets;
	}
	public function getGalaxyPlanets($galaxy) {
		$fullPTable = $this->prefix . 'planets';
		$fullSTable = $this->prefix . 'systems';
		$planets = array ();
		$statement = $this->pdo->prepare ( "SELECT $fullPTable.* FROM $fullSTable, $fullPTable WHERE $fullSTable.galaxyId = ? AND $fullSTable.id = $fullPTable.systemId ORDER BY $fullSTable.name ASC, $fullPTable.name ASC" );
		$statement->execute ( $galaxy );
		if ($statement->rowCount () > 0) {
			$planets = $statement->fetchAll ( PDO::FETCH_UNIQUE | PDO::FETCH_ASSOC );
		}
		return $planets;
	}
	
	/*
	 * ****************************************************************************************************
	 * *** Lifeforms
	 * ****************************************************************************************************
	 */
	
	/*
	 * ****************************************************************************************************
	 * *** Waren
	 * ****************************************************************************************************
	 */
	public function getResources() {
		$fullTable = $this->prefix . 'commodities';
		$resources = array ();
		$statement = $this->pdo->prepare ( "SELECT * FROM $fullTable WHERE getableOnPlanet = 1 ORDER BY name ASC" ); //,IF(german IS NULL or german = '', name, german) as name
		$statement->execute ();
		if ($statement->rowCount () > 0) {
			$resources = $statement->fetchAll ( PDO::FETCH_UNIQUE | PDO::FETCH_ASSOC );
		}
		return $resources;
	}
	public function getPlanetResources($planetId) {
		$fullTable = $this->prefix . 'planet-resource';
		$resources = array ();
		$statement = $this->pdo->prepare ( "SELECT * FROM `$fullTable` WHERE planetId = ?" );
		$statement->execute ( array (
				$planetId
		) );
		if ($statement->rowCount () > 0) {
			$resources = $statement->fetchAll ( PDO::FETCH_UNIQUE | PDO::FETCH_ASSOC );
		}
		return $resources;
	}
	
	/*
	 * ****************************************************************************************************
	 * *** Economies
	 * ****************************************************************************************************
	 */
	
	/*
	 * ****************************************************************************************************
	 * *** Wealth
	 * ****************************************************************************************************
	 */
	
	/*
	 * ****************************************************************************************************
	 * *** Conflict Level
	 * ****************************************************************************************************
	 */
	
	/*
	 * ****************************************************************************************************
	 * *** Configdatenbank
	 * ****************************************************************************************************
	 */
	public function getConfigValue($configName) {
		$fullTable = $this->prefix . 'config';
		$sql = "SELECT configValue FROM $fullTable WHERE configName = ?";
		$statement = $this->pdo->prepare ( $sql );
		$statement->execute ( array (
				$configName
		) );
		if ($statement->rowCount () == 1) {
			$row = $statement->fetch ();
			return $row ['configValue'];
		} else
			return false;
	}
	public function setConfigValue($configName, $configValue) {
		if (self::getConfigValue ( $configName )) {
			$ret = self::update ( 'config', array (
					'configValue' => $configValue
			), array (
					'configName' => $configName
			) );
		} else {
			$ret = self::insert ( 'config', array (
					'configValue' => $configValue,
					'configName' => $configName
			) );
		}
		return $ret;
	}
}
