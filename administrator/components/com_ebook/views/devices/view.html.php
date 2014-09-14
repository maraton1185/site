<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  COM_EBOOK
 *
 * @copyright   Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

/**
 * View class for a list of weblinks.
 *
 * @package     Joomla.Administrator
 * @subpackage  COM_EBOOK
 * @since       1.5
 */
class EbookViewDevices extends JViewLegacy
{
	protected $items;

	protected $pagination;

	protected $state;

	/**
	 * Display the view
	 *
	 * @return  void
	 */
	public function display($tpl = null)
	{
		$this->state		= $this->get('State');
		$this->items		= $this->get('Items');
		$this->pagination	= $this->get('Pagination');

		EbookHelper::addSubmenu('devices');

		// Check for errors.
		if (count($errors = $this->get('Errors')))
		{
			JError::raiseError(500, implode("\n", $errors));
			return false;
		}

		$this->addToolbar();
		$this->sidebar = JHtmlSidebar::render();
		parent::display($tpl);
	}

	/**
	 * Add the page title and toolbar.
	 *
	 * @since   1.6
	 */
	protected function addToolbar()
	{
		require_once JPATH_COMPONENT . '/helpers/ebook.php';

		$state	= $this->get('State');
		$canDo	= JHelperContent::getActions('com_ebook');
		$user	= JFactory::getUser();

		// Get the toolbar object instance
		$bar = JToolBar::getInstance('toolbar');

		JToolbarHelper::title(JText::_('COM_EBOOK_MANAGER_WEBLINKS'), 'link weblinks');
		if (count($user->getAuthorisedCategories('COM_EBOOK', 'core.create')) > 0)
		{
			JToolbarHelper::addNew('device.add');
		}
		if ($canDo->get('core.edit'))
		{
			JToolbarHelper::editList('device.edit');
		}
		
		if ($canDo->get('core.delete'))
		{
			JToolbarHelper::deleteList('device.delete');
		}
		
		if ($user->authorise('core.admin', 'COM_EBOOK'))
		{
			JToolbarHelper::preferences('COM_EBOOK');
		}

		JToolbarHelper::help('JHELP_COMPONENTS_WEBLINKS_LINKS');

// 		JHtmlSidebar::setAction('index.php?option=com_ebook&view=devices');

// 		JHtmlSidebar::addFilter(
// 			JText::_('JOPTION_SELECT_PUBLISHED'),
// 			'filter_user',
// 			JHtml::_('select.options', JHtml::_('jgrid.publishedOptions'), 'value', 'text', $this->state->get('filter.user'), true)
// 		);

		

	}

	/**
	 * Returns an array of fields the table can be sorted by
	 *
	 * @return  array  Array containing the field name to sort by as the key and display text as value
	 *
	 * @since   3.0
	 */
	protected function getSortFields()
	{
		return array(
			'a.user_id' => JText::_('JGRID_HEADING_ORDERING'),
			'a.device' => JText::_('JSTATUS'),
			'a.id' => JText::_('JGRID_HEADING_ID')
		);
	}
}
