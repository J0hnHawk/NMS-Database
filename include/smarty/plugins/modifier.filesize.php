<?php
/**
 * Smarty plugin
 * @package Smarty
 * @subpackage PluginsModifier
*/

/**
 * Smarty replace modifier plugin
 *
 * Type: modifier<br>
 * Name: filesize<br>
 * Purpose: show the filesize of a file in kb, mb, gb etc...
 *
 * @author Book of Zeus
 * @link http://stackoverflow.com/questions/8185828/smarty-modifier-filesize
 *      
 * @param string $        	
 * @return string
 *
 */

// Originalfunktion
// function smarty_modifier_filesize($size)
// {
// $size = max(0, (int)$size);
// $units = array( 'b', 'Kb', 'Mb', 'Gb', 'Tb', 'Pb', 'Eb', 'Zb', 'Yb');
// $power = $size > 0 ? floor(log($size, 1024)) : 0;
// return number_format($size / pow(1024, $power), 2, '.', ',') . $units[$power];
// }
function smarty_modifier_filesize($size) {
	$size = max ( 0, ( int ) $size );
	$units = array (
			'B',
			'kB',
			'MB',
			'GB',
			'TB',
			'PB',
			'EE',
			'ZB',
			'YB' 
	);
	$power = $size > 0 ? floor ( log ( $size, 1024 ) ) : 0;
	return number_format ( $size / pow ( 1024, $power ), 2, ',', '.' ) . ' ' . $units [$power];
}
?>