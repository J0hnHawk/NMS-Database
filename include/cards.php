<?php
$galaxy = GetParam ( 'galaxy', 'G', 1 );
$page = GetParam ( 'page', 'G', 'systems' );
$galaxies = $db->getWholeTable ( 'galaxies' );
if (! isset ( $galaxies [$galaxy] )) {
	$galaxy = 1;
}
$smarty->assign ( 'galaxies', $galaxies );
$smarty->assign ( 'galaxy', $galaxy );
$systems = $db->getSystems ( array (
		$galaxy
) );
$smarty->assign ( 'systems', $systems );
$planets = $db->getPlanets ( array (
		1
) );
$smarty->assign ( 'planets', $planets );
$smarty->assign ( 'page', $page );
$smarty->assign ( 'lifeform', $db->getWholeTable ( 'lifeform' ) );
$smarty->assign ( 'economy', $db->getWholeTable ( 'economy' ) );
$smarty->assign ( 'wealth', $db->getWholeTable ( 'wealth' ) );
$smarty->assign ( 'conflict', $db->getWholeTable ( 'conflict_level' ) );