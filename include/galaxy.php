<?php
if (! defined ( 'IN_NMSD' )) {
	exit ();
}

include ('include/loadTables.php');
$page = GetParam ( 'page', 'G', 'systems' );
switch ($page) {
	case 'overview' :
		//include('include/systems.php');
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



