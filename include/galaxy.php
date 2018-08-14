<?php
if (! defined ( 'IN_NMSD' )) {
	exit ();
}

include ('include/loadTables.php');
$page = GetParam ( 'page', 'G', 'systems' );
switch ($page) {
	case 'systems' :
		$mode = GetParam ( 'mode', 'G', 'manage' );
		$action = GetParam ( 'action', 'G', '' );
		switch ($action) {
			case 'add' :
				$systemName = GetParam ( 'newSystem', 'P' );
				$smarty->assign ( 'system', array (
						'id' => null,
						'name' => $systemName,
						'galaxyId' => $galaxy,
						'lifeformId' => null,
						'economyId' => null,
						'wealthId' => null,
						'conflictId' => null,
						'notes' => ''
				) );
				$smarty->assign ( 'action', 'add' );
				$smarty->assign ( 'systemEdit', true );
				break;
			case 'edit' :
				$systemId = GetParam ( 's', 'G' );
				if (isset ( $systems [$systemId] )) {
					$smarty->assign ( 'system', $systems [$systemId] );
					$planets = $db->getSystemPlanets ( array (
							$systemId
					) );
					$smarty->assign ( 'planets', $planets );
				}
				$smarty->assign ( 'action', 'edit' );
				$smarty->assign ( 'systemEdit', true );
				break;
			case 'delete' :
				break;
			default :
		}
		$page = 'systems';

		break;
	case 'planets' :
		$planets = $db->getGalaxyPlanets ( array (
				$galaxy
		) );
		$smarty->assign ( 'planets', $planets );
		break;
	default :
}
$smarty->assign ( 'page', $page );



