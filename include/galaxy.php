<?php
if (! defined ( 'IN_NMSD' )) {
	exit ();
}

include ('include/loadTables.php');
$page = GetParam ( 'page', 'G', 'overview' );
switch ($page) {
	case 'overview' :
		//include('include/systems.php');
		$resources = $db->getResources ();
		$smarty->assign ( 'resources', $resources );
		foreach($systems as $systemId => $system) {
			$systems[$systemId]['resources'] = $db->getSystemResources($systemId);
			$systems[$systemId]['planets'] = $db->getSystemPlanets ( array (
					$systemId
			) );
		}
		//var_dump($systems);
		break;
	case 'systems' :
		include('include/systems.php');
		break;
	case 'planets' :
		include('include/planets.php');
		break;
	default :
}
$smarty->assign ( 'systems', $systems );

$smarty->assign ( 'page', $page );



