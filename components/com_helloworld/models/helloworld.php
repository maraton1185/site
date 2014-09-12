<?php
// No direct access to this file
defined('_JEXEC') or die('Restricted access');
 
// import Joomla modelitem library
jimport('joomla.application.component.modelitem');
 
/**
 * HelloWorld Model
 */
class HelloWorldModelHelloWorld extends JModelItem
{
        /**
         * @var string msg
         */
        protected $msg;
 
        public function getTable($type = 'HelloWorld', $prefix = 'HelloWorldTable', $config = array()) 
        {
                return JTable::getInstance($type, $prefix, $config);
        }

        public function getMsg($id = 1) 
        {
                if (!is_array($this->messages))
                {
                        $this->messages = array();
                }
 
                if (!isset($this->messages[$id])) 
                {
                        //request the selected id
                        $jinput = JFactory::getApplication()->input;
                        $id = $jinput->get('id', 1, 'INT' );
 
                        // Get a TableHelloWorld instance
                        $table = $this->getTable();
 
                        // Load the message
                        $table->load($id);
 
                        // Assign the message
                        $this->messages[$id] = $table->greeting;
                }
 
                return $this->messages[$id];
        }
} 