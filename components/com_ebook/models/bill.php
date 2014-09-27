<?php
// No direct access to this file
defined ( '_JEXEC' ) or die ( 'Restricted access' );

// import Joomla modelitem library
jimport ( 'joomla.application.component.modelitem' );

// require_once JPATH_COMPONENT_ADMINISTRATOR.'/helpers/sql.php';

class EbookModelBill extends JModelLegacy {

	public function getUrl($data) {
		return "hello".$data;
	}
		
	
} 