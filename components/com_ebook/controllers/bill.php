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
			
	
	public function order1()
	{
	
		if(!$this->_check())
			return false;
					
		return $this->_redirect('order1count');
	
	}
	
	public function order2()
	{
	
		if(!$this->_check())
			return false;
				
		return $this->_redirect('order2count');
				
	}
	
	public function order3()
	{
	
		if(!$this->_check())
			return false;
	
		
		$app = JFactory::getApplication();
		$componentParams = $app->getParams('com_ebook');
		$active = $componentParams->get('order3active');
		if(!$active)
			return false;
		
		
		return $this->_redirect('order3count');
	
	}
	
	private function _redirect($type)
	{
		
		$app = JFactory::getApplication();
		$componentParams = $app->getParams('com_ebook');
		$count = $componentParams->get($type);
		
		$model = $this->getModel('bill');
		$url = $model->getUrl($count);
		
		$this->setRedirect(JRoute::_($url, false));
		
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