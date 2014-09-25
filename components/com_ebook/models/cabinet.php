<?php
// No direct access to this file
defined ( '_JEXEC' ) or die ( 'Restricted access' );

// import Joomla modelitem library
jimport ( 'joomla.application.component.modelitem' );

require_once JPATH_COMPONENT_ADMINISTRATOR.'/helpers/sql.php';

class EbookModelCabinet extends JModelLegacy {

	public function getMsg() {
		$app = JFactory::getApplication();
		$msg = $app->input->getInt('msg',-1);		 
		return $msg;
	}
	
	public function getDevices() {
		
		$db = JFactory::getDBO();
        $query = $db->getQuery(true);

        $user = JFactory::getUser();
        
        $query
        	->select(array('a.UUID', 'a.date'))
        	->from($db->quoteName('#__ebook_devices') . ' AS a')
        	->where('a.user_id = '.$db->quote((int) $user->id))        	
        ;
        
        $db->setQuery($query);
        return $db->loadObjectList();
       
	}
	
	public function getOrders() {
	
		$db = JFactory::getDBO();
		$query = $db->getQuery(true);
	
		$user = JFactory::getUser();
	
		$query
			->select(array('a.id', 'a.description', 'a.state', 'a.devices', 'a.total', 'a.date' ))
			->from($db->quoteName('#__ebook_orders') . ' AS a')
			->where('a.user_id = '.$db->quote((int) $user->id))
		;
	
		$db->setQuery($query);
		return $db->loadObjectList();
		 
	}
	
	public function getInfo() {
	
		$user = JFactory::getUser();
		$db = JFactory::getDBO();
        $query = $db->getQuery(true);
        
        $sql = 'SELECT 	'.SqlHelper::getQuery().'     				
        		where a.id='.$db->quote((int) $user->id)
        	;

        $query->setQuery($sql);
        	$db->setQuery($query);
		return $db->loadObject();
			
	}
	
} 