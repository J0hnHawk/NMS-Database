<?php
if (! defined ( 'IN_NMSD' )) {
	exit ();
}
$galaxy = GetParam ( 'galaxy', 'G', 1 );
$galaxies = $db->getWholeTable ( 'galaxies' );
if (! isset ( $galaxies [$galaxy] )) {
	$galaxy = 1;
}
$smarty->assign ( 'galaxies', $galaxies );
$smarty->assign ( 'galaxy', $galaxy );
$systems = $db->getSystems ( $galaxy );
// $smarty->assign ( 'systems', $systems );

$smarty->assign ( 'lifeform', $db->getWholeTable ( 'lifeform' ) );
$smarty->assign ( 'economy', $db->getWholeTable ( 'economy' ) );
$smarty->assign ( 'wealth', $db->getWholeTable ( 'wealth' ) );
$smarty->assign ( 'conflict', $db->getWholeTable ( 'conflict' ) );
$smarty->assign ( 'biomes', $db->getWholeTable ( 'biomes' ) );
$smarty->assign ( 'weather', $db->getWholeTable ( 'weather' ) );
$smarty->assign ( 'fauna', $db->getWholeTable ( 'fauna' ) );
$smarty->assign ( 'flora', $db->getWholeTable ( 'flora' ) );
$smarty->assign ( 'sentinel', $db->getWholeTable ( 'sentinel' ) );
$smarty->assign ( 'resources', $db->getWholeTable ( 'resources' ) );