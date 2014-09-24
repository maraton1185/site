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
		
	private function _addOrder($data)
	{
	
		$db    = $this->getDbo();
		 
		// Create and populate an object.
		$order = new stdClass();
		$order->user_id = $data->user_id;
		$order->date = JFactory::getDate()->toSql();
		
		 
		$result = $db->insertObject('#__ebook_orders', $uuid);
		 
		return $result;
	
	}
	
} 