<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_ebook
 *
 * @copyright   Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

/**
 * @package     Joomla.Administrator
 * @subpackage  com_ebook
 * @since       1.6
 */
class EbookHelper
{
	/**
	 * Configure the Linkbar.
	 *
	 * @param   string	The name of the active view.
	 *
	 * @return  void
	 * @since   1.6
	 */
	public static function addSubmenu($vName)
	{
		JHtmlSidebar::addEntry(
			JText::_('COM_EBOOK_ACTIVATE'),
			'index.php?option=com_ebook&view=activate',
			$vName == 'activate'
		);


		JHtmlSidebar::addEntry(
			JText::_('COM_EBOOK_DEVICES'),
			'index.php?option=com_ebook&view=devices',
			$vName == 'devices'
		);

		JHtmlSidebar::addEntry(
			JText::_('COM_EBOOK_ORDERS'),
			'index.php?option=com_ebook&view=orders',
			$vName == 'orders'
		);

		JHtmlSidebar::addEntry(
			JText::_('COM_EBOOK_USERS'),
			'index.php?option=com_ebook&view=users',
			$vName == 'users'
		);

	}

	/**
	 * Gets a list of the actions that can be performed.
	 *
	 * @return  JObject
	 *
	 * @deprecated  3.2  Use JHelperContent::getActions() instead
	 */
// 	public static function getActions()
// 	{
// 		// Log usage of deprecated function
// 		JLog::add(__METHOD__ . '() is deprecated, use JHelperContent::getActions() with new arguments order instead.', JLog::WARNING, 'deprecated');

// 		// Get list of actions
// 		$result = JHelperContent::getActions('com_ebook');

// 		return $result;
// 	}

	public static function getActions() {
		$user = JFactory::getUser();
		$result = new JObject;
	
		$actions = array(
				'core.admin', 'core.manage', 'core.create', 'core.edit', 'core.delete'
		);
	
		foreach ($actions as $action) {
			$result->set($action, $user->authorise($action, 'com_ebook'));
		}
	
		return $result;
	}
	/**
	 * Get a list of filter options for the state of a module.
	 *
	 * @return  array  An array of JHtmlOption elements.
	 */
// 	public static function getStateOptions()
// 	{
// 		// Build the filter options.
// 		$options	= array();
// 		$options[]	= JHtml::_('select.option',	'1',	JText::_('COM_EBOOK_OPTION_READ'));
// 		$options[]	= JHtml::_('select.option',	'0',	JText::_('COM_EBOOK_OPTION_UNREAD'));
// 		$options[]	= JHtml::_('select.option',	'-2',	JText::_('JTRASHED'));
// 		return $options;
// 	}
		
}
