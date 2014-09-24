<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_ebook
 *
 * @copyright   Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

require_once JPATH_COMPONENT.'/helpers/ebook.php';

class EbookControllerDevice extends JControllerForm{
	
	public function getError($i = null, $toString = true)
	{
		$canDo = EbookHelper::getActions();
		if ($canDo->get('core.admin')) {
			return parent::getError($i, $toString);
		}
		return 'error when saving';		
	}
	
}
