<?php
/**
* @package Joomla.Administrator
* @subpackage com_helloworld
*
* @copyright Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
* @license GNU General Public License version 2 or later; see LICENSE.txt
*/
 
// No direct access to this file
defined('_JEXEC') or die;
 
// import Joomla view library
jimport('joomla.application.component.view');
 
/**
* HTML View class for the HelloWorld Component
*
* @since 0.0.1
*/
class EbookViewActivate extends JViewLegacy
{
        /**
         * Display the Hello World view
         *
         * @param   string  $tpl  The name of the template file to parse; automatically searches through the template paths.
         *
         * @return  void
         */
        public function display($tpl = null) 
        {
                // Assign data to the view
                //$this->msg = 'Hello World';
 				echo "raw";
                // Assign data to the view
//                 $this->msg = $this->get('Msg');
 
//                 //dump($this->get('Msg'));
//                 // Check for errors.
//                 if (count($errors = $this->get('Errors'))) 
//                 {
//                         JLog::add(implode('<br />', $errors), JLog::WARNING, 'jerror');
//                         return false;
//                 }
//                 // Display the view
//                 parent::display($tpl);
        }
}