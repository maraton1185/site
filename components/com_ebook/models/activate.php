<?php
// No direct access to this file
defined('_JEXEC') or die('Restricted access');
 
// import Joomla modelitem library
// jimport('joomla.application.component.modelitem');
require_once JPATH_COMPONENT_ADMINISTRATOR.'/helpers/crypt.php';
require_once JPATH_COMPONENT_ADMINISTRATOR.'/helpers/sql.php';
 
/**
 * HelloWorld Model
 */
class EbookModelActivate extends JModelLegacy
{
 
//         public function getTable($type = 'HelloWorld', $prefix = 'HelloWorldTable', $config = array())
//         {
//                 return JTable::getInstance($type, $prefix, $config);
//         }

        public function getAnswer()
        {
        	$app = JFactory::getApplication();
        	
        	if(JString::strcasecmp($app->input->getMethod(),'post'))
        	{
        		$this->setError('error post');
        		return false;
        	}
        	
        	$msg = $app->input->getString('msg');
        	
        	//return $msg;
        	 
        	$mcrypt = new CryptHelper();
        	$decripted = $mcrypt->decrypt($msg);
        	
        	if(!$decripted){
        		return "!00";
        	}
        	
        	$data = $mcrypt->getData($decripted);
        	
//         	$data = new stdClass();
//         	$data->name = $app->input->getString('name');
//         	$data->password = $app->input->getString('password');
        	if(!$this->_checkUser($data))
        	{
        		$data->error = "01";
        		return $mcrypt->encrypt($mcrypt->getString($data));
        	}
        	      	
        	if($this->_checkUUID($data))
        	{
        		$data->activated = "true";  
        		$this->_getInfo($data);        		      		 
        		return $mcrypt->encrypt($mcrypt->getString($data));        		        		
        	}
        	    	
        	
        	if(!$this->_checkFree($data))
        	{
        		$data->error = "02";
        		return $mcrypt->encrypt($mcrypt->getString($data));
        	}        	
        	
        	
        	if(!$this->_insertUUID($data))
        	{
        		$data->error = "03";
        		return $mcrypt->encrypt($mcrypt->getString($data));
        	}
        	
        	$data->activated = "true";       	
        	$this->_getInfo($data);
        	
        	return $mcrypt->encrypt($mcrypt->getString($data));
        	

        }
        
        private function _insertUUID($data)
        {
        
        	$db    = $this->getDbo();
        	
        	// Create and populate an object.
        	$uuid = new stdClass();
        	$uuid->user_id = $data->user_id;
        	$uuid->uuid = $data->uuid;
        	$uuid->date = JFactory::getDate()->toSql();
        	
        	$result = $db->insertObject('#__ebook_devices', $uuid);
        	
        	return $result;
        
        }
        
        private function _checkFree($data)
        {
        	 
        	$db    = $this->getDbo();
        	 
        	$query = $db->getQuery(true);
        	 
        	$sql = 'SELECT a.id,'.SqlHelper::getQuery().'         			
        		where a.id='.$db->quote($db->escape($data->user_id)).
        		' AND IF(b.devices-c.devices IS NULL,b.devices,b.devices-c.devices)>0'
        	;
        	
        	$query->setQuery($sql);
        	
        	$db->setQuery($query);
        	
        	$result = $db->loadObject();
        
        	if ($result)
        	{
        		$data->dev_all = $result->_all;
        		$data->dev_activated = $result->activated;
        		$data->dev_free = $result->free;
        		return true;
        	}
        	return false;
        		
        }
        
        private function _checkUUID($data)
        {
        	
        	$db    = $this->getDbo();
        	
        	$query = $db->getQuery(true);
        	
        	$query
        		->select($db->quoteName(array('a.id')))
        		->from($db->quoteName('#__ebook_devices') . ' AS a')
        		->where('a.user_id='.$db->quote($db->escape($data->user_id)))
        		->where('a.uuid='.$db->quote($db->escape($data->uuid)))
        		;
        	$db->setQuery($query);
        	$result = $db->loadObject();

			return $result;
			
        }
        
        private function _getInfo($data)
        {
        	$db    = $this->getDbo();
        	 
        	$query = $db->getQuery(true);
        	
        	$sql = 'SELECT a.id,'.SqlHelper::getQuery().'
        			where a.id='.$db->quote($db->escape($data->user_id))
        	        			;
        	 
        	$query->setQuery($sql);
        	 
        	$db->setQuery($query);
        	$result = $db->loadObject();
        	if ($result)
        	{
        		$data->dev_all = $result->_all;
        		$data->dev_activated = $result->activated;
        		$data->dev_free = $result->free;
        	}
        }
        
        private function _checkUser($data)
        {
        	 
        	$db    = $this->getDbo();
        	 
        	$query = $db->getQuery(true);
        	 
        	$query
        	->select($db->quoteName(array('a.email', 'a.password', 'a.id')))
        	->from($db->quoteName('#__users') . ' AS a')
        	->where('a.email='.$db->quote($db->escape($data->name)))
        	->where('a.block='.$db->quote('0'));
        
        	$db->setQuery($query);
        	$result = $db->loadObject();
        	if ($result)
        	{
        		$match = JUserHelper::verifyPassword($data->password, $result->password, $result->id);
        		 
        		if ($match === true)
        		{
        			$data->user_id = $result->id;
        			return true;
        		}
        	}
        
        	return false;
        		
        }
}