<?php
/**
 * This file is part of the "Startseite" package.
 * Copyright (C) 2018 Lars Bleckwenn <lars.bleckwenn@web.de>
 *
 * "Startseite" is free software: you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as published
 * by the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * "Startseite" is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */
session_start ();
require_once ('include/config.php');
require ('./include/db.class.php');
$db = new dbOperations ( $dbhost, $dbname, $dbuser, $dbpass, $tablePrefix );

require_once ('include/smarty/Smarty.class.php');
require_once ('include/functions.php');

if (! file_exists ( './compile' )) {
	mkdir ( './compile' );
}
if (! file_exists ( './cache' )) {
	mkdir ( './cache' );
}

$style = 'bootstrap4';

$smarty = new Smarty ();
$smarty->caching = false;
$smarty->debugging = false;
$smarty->assign ( 'style', $style );
$smarty->setTemplateDir ( "./styles/$style" );
$smarty->setCompileDir ( './compile' );

include ('include/cards.php');

$smarty->display ( 'index.tpl' );
