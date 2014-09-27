<?php
/**
 * @package     Joomla.Site
* @subpackage  com_finder
*
* @copyright   Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
* @license     GNU General Public License version 2 or later; see LICENSE
*/

defined('_JEXEC') or die;

/**
 * Suggestions JSON controller for Finder.
 *
 * @package     Joomla.Site
 * @subpackage  com_finder
 * @since       2.5
 */
class EbookControllerBill extends JControllerLegacy
{
	
	
	public function order10()
	{
	
		if(!$this->_check())
			return;
		
		$model = $this->getModel('bill');
		$this->setRedirect(JRoute::_($model->getUrl(10), false));
		
		return $this;
				
	}
	
	public function order3()
	{		
		
		if(!$this->_check())
			return;
		
		$model = $this->getModel('bill');
		$this->setRedirect(JRoute::_($model->getUrl(3), false));
		
		return $this;
	}
	
	private function _check()
	{
		$user = JFactory::getUser();
		if ($user->get('guest') == 1)
		{
			$uri        = JFactory::getURI();
			$return     = $uri->toString();
			$url  = 'index.php?option=com_users&view=login';
			$url .= '&return='.base64_encode($return);
			$url .= '&Itemid=114';
			// Redirect to login page.
			$this->setRedirect(JRoute::_($url, false));
			return false;
		}
		return true;
	}
	
	
}