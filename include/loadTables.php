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
$systems = $db->getSystems ( array (
		$galaxy
) );
$smarty->assign ( 'systems', $systems );

$smarty->assign ( 'lifeform', $db->getWholeTable ( 'lifeform' ) );
$smarty->assign ( 'economy', $db->getWholeTable ( 'economy' ) );
$smarty->assign ( 'wealth', $db->getWholeTable ( 'wealth' ) );
$smarty->assign ( 'conflict', $db->getWholeTable ( 'conflict_level' ) );