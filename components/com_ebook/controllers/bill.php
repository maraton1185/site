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
	
	
	
		echo "redirect to url 10";
		//make order
		//make robokassa url
		//redirect to url
	
		return $this;
		// 		$viewName = 'activate';
		// 		$view = $this->getView($viewName, 'raw');
		// 		if ($model = $this->getModel($viewName))
			// 		{
			// 			// Push the model into the view (as default)
			// 			$view->setModel($model, true);
			// 		}
		// 		//dump($model);
		// 		$view->display();
	}
	
	public function order3()
	{		
		
		if(!$this->_check())
			return;
		
		
		
		echo "redirect to url 3";
		//make order
		//make robokassa url
		//redirect to url
		
		return $this;
// 		$viewName = 'activate';
// 		$view = $this->getView($viewName, 'raw');
// 		if ($model = $this->getModel($viewName))
// 		{
// 			// Push the model into the view (as default)
// 			$view->setModel($model, true);
// 		}
// 		//dump($model);
// 		$view->display();
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
			// Redirect to login page.
			$this->setRedirect(JRoute::_($url, false));
			return false;
		}
		return true;
	}
	
	
}