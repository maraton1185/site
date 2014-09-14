<?php
// No direct access to this file
defined('_JEXEC') or die('Restricted access');
 
// import Joomla modelitem library
// jimport('joomla.application.component.modelitem');
require_once JPATH_COMPONENT_ADMINISTRATOR.'/helpers/crypt.php';
 
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
        	$data = $mcrypt->getData($mcrypt->decrypt($msg));
        	
        	if(!$this->_checkUser($data))
        	{
        		$data->user_error = "true";
        		return $mcrypt->encrypt($mcrypt->getString($data));
        	}
        	
        	$data->activated = "true";
        	$msg = "name=".$data->name."&".
        			"password=".$data->password."&".
        			"serial=".$data->serial."&".
        			"activated=".$data->activated;
//         			."&".
//         			"message=".$data->message."&";
        	
        	
        	return $mcrypt->encrypt($msg);
        	

        }
        
        private function _checkUser($data)
        {
        	
        	$db    = $this->getDbo();
        	$query = $db->getQuery(true);
        	
        	$query
        		->select($db->quoteName(array('a.email', 'a.password')))
        		->from($db->quoteName('#__users') . ' AS a')
        		->where('a.email = ' . $db->escape($data->name))
        		->where('a.password = ' . $db->escape(md5($data->password)))
        		->where('a.block = 0');
        	
        	try
        	{
        		$result = $db->loadObject();
        		
        		
        		return $result;
        		        	
        	}
        	catch (RuntimeException $e)
        	{
        		$this->setError($e->getMessage());
        	
        		return false;
        	}
        	
        	return true;
        }
} 