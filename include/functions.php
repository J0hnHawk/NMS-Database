<?php
if (! defined ( 'IN_NMSD' )) {
	exit ();
}
function GetParam($ParamName, $Method = "P", $DefaultValue = "") {
	if ($Method == "P") {
		if (isset ( $_POST [$ParamName] ))
			return $_POST [$ParamName];
		else
			return $DefaultValue;
	} else if ($Method == "G") {
		if (isset ( $_GET [$ParamName] ))
			return $_GET [$ParamName];
		else
			return $DefaultValue;
	} else if ($Method == "S") {
		if (isset ( $_SERVER [$ParamName] ))
			return $_SERVER [$ParamName];
		else
			return $DefaultValue;
	} else if ($Method == "Z") {
		if (isset ( $_SESSION [$ParamName] ))
			return $_SESSION [$ParamName];
		else
			return $DefaultValue;
	} else if ($Method == "B") {
		$both = array_merge ( $_GET, $_POST );
		if (isset ( $both ))
			return $both;
		else
			return $DefaultValue;
	}
}
function addSuccess($message) {
	return '<div class="alert alert-success"><strong>Erfolg!</strong> ' . $message . '</div>';
}
function addInfo($message) {
	return '<div class="alert alert-info"><strong>Hinweis:</strong> ' . $message . '</div>';
}
function addError($message) {
	return '<div class="alert alert-danger"><strong>Fehler!</strong> ' . $message . '</div>';
}
function getPostVars($formFields) {
	$returnVars = array ();
	foreach ( $formFields as $varName => $varAttributes ) {
		$varValue = GetParam ( $varName );
		if (is_array ( $varValue ) && ! isset ( $varAttributes ['isarray'] ))
			return false;
		if (isset ( $formFields [$varName] ['boolean'] )) {
			$varValue = filter_var ( $varValue, FILTER_VALIDATE_BOOLEAN ) + 0;
		}
		$returnVars [$varName] = $varValue;
	}
	return $returnVars;
}
function checkForUpdates($postVars, $user) {
	$updatedVars = array ();
	foreach ( $postVars as $varName => $varValue ) {
		if ($varName == 'userId')
			continue;
		if ($varName == 'password') {
			if (trim ( $varValue ) != '')
				$updatedVars ['password'] = trim ( $varValue );
		} elseif ($user [$varName] != $varValue)
			$updatedVars [$varName] = $varValue;
	}
	return $updatedVars;
}
function getConfigValue($config_name) {
	global $db_config, $sqldb;
	$sql = "SELECT config_value FROM `$db_config` WHERE config_name = '$config_name'";
	$result = $sqldb->query ( $sql );
	if ($result->num_rows > 0) {
		$row = $result->fetch_assoc ();
		return $row ['config_value'];
	} else
		return false;
}
