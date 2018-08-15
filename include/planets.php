<?php
$planets = $db->getGalaxyPlanets ( array (
		$galaxy
) );
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
						'notes' => ''
				) );
				$smarty->assign ( 'action', 'add' );
				$smarty->assign ( 'planetEdit', true );
			}
		}
		break;
	case 'edit' :
		if ($_SERVER ['REQUEST_METHOD'] === 'POST') {
			var_dump($_POST);
		} else {
			$planets = $db->getSystemPlanets ( array (
					$systemId
			) );
		}
		break;
	case 'delete' :
		break;
	default :
}
$smarty->assign ( 'planets', $planets );
$smarty->assign ( 'ressources', $db->getRessources () );