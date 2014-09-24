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
 
// import Joomla controller library
jimport('joomla.application.component.controller');
 
/**
 * Hello World Component Controller
 *
 * @since   0.0.1
 */
class EBookController extends JControllerLegacy
{
	protected $default_view = 'cabinet';
	
	public function display($cachable = false, $urlparams = false)
	{
		// Get the document object.
		$document	= JFactory::getDocument();
		
		// Set the default view name and format from the Request.
		$vName   = $this->input->getCmd('view', 'cabinet');
		$vFormat = $document->getType();
		$lName   = $this->input->getCmd('layout', 'default');
		
		if($vName='cabinet')
		{
			// If the user is a guest, redirect to the login page.
			$user = JFactory::getUser();
			if ($user->get('guest') == 1)
			{
				// Redirect to login page.
				$this->setRedirect(JRoute::_('index.php?option=com_users&view=login', false));
				return;
			}
		}
		
		parent::display();
		
		return $this;
	}
	
} 