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
class EbookControllerRequest extends JControllerLegacy
{
	public function activate()
	{		
		$view = $this->getView('request', 'raw');
		if ($model = $this->getModel('activate'))
		{
			// Push the model into the view (as default)
			$view->setModel($model, true);
		}
		//dump($model);
		$view->display();
	}
	
	public function contact()
	{
		$view = $this->getView('request', 'raw');
		if ($model = $this->getModel('contact'))
		{
			// Push the model into the view (as default)
			$view->setModel($model, true);
		}
		//dump($model);
		$view->display();
	}
	
}