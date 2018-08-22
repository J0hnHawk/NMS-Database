<?php
$planets = $db->getGalaxyPlanets ( array (
		$galaxy
) );
$commodities = $db->getResources ();
$mode = GetParam ( 'mode', 'G', 'manage' );
$action = GetParam ( 'action', 'G', '' );
switch ($action) {
	case 'add' :
		if ($_SERVER ['REQUEST_METHOD'] === 'POST') {
			if (isset ( $_POST ['newPlanet'] )) {
				$planetName = GetParam ( 'newPlanet', 'P' );
				$smarty->assign ( 'planet', array (
						'id' => null,
						'name' => $planetName,
						'systemId' => null,
						'planetMoonId' => null,
						'portalCode' => null,
						'galacticAdress' => null,
						'biomeId' => null,
						'weatherId' => array (),
						'sentinelId' => array (),
						'floraId' => array (),
						'faunaId' => array (),
						'notes' => '',
						'commodities' => array ()
				) );
				$smarty->assign ( 'action', 'add' );
				$smarty->assign ( 'planetEdit', true );
			}
		}
		break;
	case 'edit' :
		if ($_SERVER ['REQUEST_METHOD'] === 'POST') {
			// var_dump ( $_POST );
			$planetId = GetParam ( 'planetId', 'P' );
			$systemId = GetParam ( 'systemId', 'P' );
			if ($systemId) {
				$dataFields = array (
						'name' => GetParam ( 'name', 'P' ),
						'systemId' => $systemId
				);
				$formFields = array (
						'planetMoonId',
						'portalCode',
						'galacticAdress',
						'biomeId',
						'weatherId',
						'resourcesId',
						'sentinelId',
						'floraId',
						'faunaId',
						'notes'
				);
				foreach ( $formFields as $formField ) {
					$value = GetParam ( $formField, 'P' );
					if ($value) {
						$dataFields += array (
								$formField => ($value == 'null') ? NULL : GetParam ( $formField, 'P' )
						);
					}
				}
				$updateResource = false;
				if ($planetId) {
					if ($db->update ( 'planets', $dataFields, array (
							'id' => $planetId
					) )) {
						$updateResource = true;
					}
				} else {
					$planetId = $db->insert ( 'planets', $dataFields );
					if ($planetId) {
						$updateResource = true;
					}
				}
				if ($updateResource) {
					$db->delete ( 'planet-resource', array (
							'planetId' => $planetId
					) );
					if (isset ( $_POST ['commodity'] )) {
						foreach ( $_POST ['commodity'] as $commodityId ) {
							if (isset ( $commodities [$commodityId] )) {
								$db->insert ( 'planet-resource', array (
										'planetId' => $planetId,
										'commodityId' => $commodityId
								) );
							}
						}
					}
				}
				$target = $_SERVER ['REQUEST_SCHEME'] . '://' . $_SERVER ['HTTP_HOST'] . rtrim ( dirname ( $_SERVER ['SCRIPT_NAME'] ), '/' ) . "/index.php?galaxy=$galaxy&page=planets&lastPlanet={$dataFields['name']}";
				header ( 'Location: ' . $target, true, $_SERVER ['SERVER_PROTOCOL'] == 'HTTP/1.1' ? 303 : 302 );
				die ();
				$planets = $db->getGalaxyPlanets ( array (
						$galaxy
				) );
			}
			$smarty->assign ( 'action', '' );
			$systems = $db->getSystems ( $galaxy );
		} else {
			$planetId = GetParam ( 'p', 'G' );
			if (isset ( $planets [$planetId] )) {
				$planets = $db->getSystemPlanets ( array (
						$planets [$planetId] ['systemId']
				) );
				$planet = $planets [$planetId];
				$planet ['id'] = $planetId;
				$planet ['commodities'] = $db->getPlanetResources ( $planetId );
				$smarty->assign ( 'planet', $planet );
				$smarty->assign ( 'action', 'edit' );
				$smarty->assign ( 'planetEdit', true );
			}
		}
		break;
	case 'delete' :
		break;
	default :
		$smarty->assign ( 'lastPlanet', GetParam ( 'lastPlanet', 'G', 1 ) );
}
$smarty->assign ( 'planets', $planets );
$smarty->assign ( 'commodities', $commodities );