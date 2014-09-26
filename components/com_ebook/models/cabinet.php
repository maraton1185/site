<?php
// No direct access to this file
defined ( '_JEXEC' ) or die ( 'Restricted access' );

// import Joomla modelitem library
jimport ( 'joomla.application.component.modelitem' );

class EbookModelCabinet extends JModelLegacy {

	public function getMsg() {
		return "hello)";
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
        
        $sql = 'SELECT 	
    				IF(b.devices IS NULL,0,b.devices) as _all, 
    				IF(b.total IS NULL,0,b.total) as total, 
    				IF(c.devices IS NULL,0,c.devices) as activated, 
    				IF(b.devices-c.devices IS NULL,0,b.devices-c.devices) as free 
        
        		FROM `#__users` as a 
        		left join 
        			(select user_id, sum(devices) as devices, sum(total)as total from `#__ebook_orders` where state=1) as b 
        			on a.id=b.user_id
        		left join 
        			(select user_id, count(UUID) as devices from `#__ebook_devices`) as c 
        			on a.id=c.user_id
        		where a.id='.$db->quote((int) $user->id)
        	;

        $query->setQuery($sql);
        	$db->setQuery($query);
		return $db->loadObject();
			
	}
	
} 