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
//         	var_dump($app->input->getString('name'));
//         	$data = new stdClass();
//         	$data->name = $app->input->getString('name');
//         	$data->password = $app->input->getString('password');
        	if(!$this->_checkUser($data))
        	{
//         		return "!_checkUser";
        		$data->user_error = "true";
        		return $mcrypt->encrypt($mcrypt->getString($data));
        	}
        	
//         	return "_checkUser";
        	
        	$data->activated = "true";
//         	$msg = "name=".$data->name."&".
//         			"password=".$data->password."&".
//         			"serial=".$data->serial."&".
//         			"activated=".$data->activated;
//         			."&".
//         			"message=".$data->message."&";
        	
        	
        	return $mcrypt->encrypt($mcrypt->getString($data));
        	

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
        			return true;
        		}
			}

			return false;
			
        }
}