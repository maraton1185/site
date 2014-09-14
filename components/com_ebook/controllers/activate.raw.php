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
class EbookControllerActivate extends JControllerLegacy
{
	public function serial()
	{		
		$viewName = 'activate';
		$view = $this->getView($viewName, 'raw');
		if ($model = $this->getModel($viewName))
		{
			// Push the model into the view (as default)
			$view->setModel($model, true);
		}
		//dump($model);
		$view->display();
	}
	
	
}