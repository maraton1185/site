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
        public function display($tpl = null) 
        {
			// Assign data to the view
        	
        	$msg = $this->get('Answer');
 
        	if (count($errors = $this->get('Errors')))
        	{
				echo implode('<br />', $errors);
				JLog::add(implode('<br />', $errors), JLog::WARNING, 'jerror');
        		return false;
        	}   

        	echo $msg;
             //parent::display($tpl);
        }
}