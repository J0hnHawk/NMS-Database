<?php
$mode = GetParam ( 'mode', 'G', 'manage' );
$action = GetParam ( 'action', 'G', '' );
switch ($action) {
	case 'add' :
		if ($_SERVER ['REQUEST_METHOD'] === 'POST') {
			if (isset ( $_POST ['newSystem'] )) {
				$systemName = GetParam ( 'newSystem', 'P' );
				$smarty->assign ( 'system', array (
						'id' => null,
						'name' => $systemName,
						'galaxyId' => $galaxy,
						'lifeformId' => null,
						'economyId' => null,
						'wealthId' => null,
						'conflictId' => null,
						'planets' => array (),
						'notes' => ''
				) );
				$smarty->assign ( 'action', 'add' );
				$smarty->assign ( 'systemEdit', true );
			}
		}
		break;
	case 'edit' :
		if ($_SERVER ['REQUEST_METHOD'] === 'POST') {
			$systemId = GetParam ( 'systemId', 'P' );
			$dataFields = array (
					'name' => GetParam ( 'name', 'P' ),
					'galaxyId' => GetParam ( 'galaxyId', 'P' )
			);
			$formFields = array (
					'lifeformId',
					'economyId',
					'conflictId',
					'wealthId',
					'notes'
			);
			foreach ( $formFields as $formField ) {
				if (GetParam ( $formField, 'P' )) {
					$dataFields += array (
							$formField => GetParam ( $formField, 'P' )
					);
				}
			}
			if ($systemId) {
				$db->update ( 'systems', $dataFields, array (
						'id' => $systemId
				) );
			} else {
				$systemId = $db->insert ( 'systems', $dataFields );
				$dataFields = array ();
				foreach ( $_POST ['planetname'] as $planet ) {
					if (trim ( $planet )) {
						$db->insert ( 'planets', array (
								'name' => $planet,
								'systemId' => $systemId
						) );
					}
				}
			}
			$smarty->assign ( 'action', '' );
			$systems = $db->getSystems ( $galaxy );
		} else {
			$systemId = GetParam ( 's', 'G' );
			if (isset ( $systems [$systemId] )) {
				$system = $systems [$systemId];
				$system ['id'] = $systemId;
				$smarty->assign ( 'system', $system );
				$planets = $db->getSystemPlanets ( array (
						$systemId
				) );
				$smarty->assign ( 'planets', $planets );
			}
			$smarty->assign ( 'action', 'edit' );
			$smarty->assign ( 'systemEdit', true );
		}
		break;
	case 'delete' :
		$systemId = GetParam ( 's', 'G' );
		if (isset ( $systems [$systemId] )) {
			unset ( $systems [$systemId] );
			$db->deleteSystem ( $systemId );
		}
		break;
	default :
}
$page = 'systems';
