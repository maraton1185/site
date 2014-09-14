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
        	echo 'hello!!  ';
//         	echo $msg;
        	return false;
        	
//         	JInput::
//         	JRequest::getVar($name)
        	$data['email'] = "";
        	$data['password']="";
        	$data['UUID']="";
//         	$this->setError('error');
        	$msg = "name=".$data['email']."&".
        			"password=".$data['password']."&".
        			"serial=".$data['UUID']."&".
        			"activated=true";
        	
        	$mcrypt = new CryptHelper();
        	return $mcrypt->encrypt($msg);
        	
        	return "hello)";
//                 if (!is_array($this->messages))
//                 {
//                         $this->messages = array();
//                 }
 
//                 if (!isset($this->messages[$id])) 
//                 {
//                         //request the selected id
//                         $jinput = JFactory::getApplication()->input;
//                         $id = $jinput->get('id', 1, 'INT' );
 
//                         // Get a TableHelloWorld instance
//                         $table = $this->getTable();
 
//                         // Load the message
//                         $table->load($id);
 
//                         // Assign the message
//                         $this->messages[$id] = $table->greeting;
//                 }
 
//                 return $this->messages[$id];
        }
} 