<?php
$planets = $db->getGalaxyPlanets ( array (
		$galaxy
) );
$resources = $db->getResources ();
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
						'resources' => array ()
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
						'sentinelId',
						'floraId',
						'faunaId',
						'notes'
				);
				foreach ( $formFields as $formField ) {
					if (GetParam ( $formField, 'P' )) {
						$dataFields += array (
								$formField => GetParam ( $formField, 'P' )
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
					foreach ( $_POST ['resource'] as $commodityId ) {
						if (isset ( $resources [$commodityId] )) {
							$db->insert ( 'planet-resource', array (
									'planetId' => $planetId,
									'commodityId' => $commodityId
							) );
						}
					}
				}
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
				$planet ['resources'] = $db->getPlanetResources ( $planetId );
				$smarty->assign ( 'planet', $planet );
				$smarty->assign ( 'action', 'edit' );
				$smarty->assign ( 'planetEdit', true );
			}
		}
		break;
	case 'delete' :
		break;
	default :
}
$smarty->assign ( 'planets', $planets );
$smarty->assign ( 'resources', $resources );