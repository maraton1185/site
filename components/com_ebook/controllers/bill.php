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
	public function order()
	{		
		
		$user = JFactory::getUser();
		if ($user->get('guest') == 1)
		{
			// Redirect to login page.
			$this->setRedirect(JRoute::_('index.php?option=com_users&view=login', false));
			return;
		}
		
		echo "redirect to url";
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
	
	
}