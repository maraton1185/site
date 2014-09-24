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
 * HTML View class for the Ebook component
 *
 * @package     Joomla.Administrator
 * @subpackage  com_ebook
 * @since       1.6
 */
class EbookViewActivate extends JViewLegacy
{
	protected $form;

	protected $item;

	protected $state;

	public function display($tpl = null)
	{
		require_once JPATH_COMPONENT.'/helpers/ebook.php';
		
		$this->form		= $this->get('Form');
		$this->item		= $this->get('Item');
		$this->state	= $this->get('State');

		EbookHelper::addSubmenu('activate');
		
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
		
		JToolbarHelper::title(JText::_('COM_EBOOK_VIEW_ACTIVATE'), 'user');
		JToolbarHelper::custom('activate.getlicense', 'redo', null, 'COM_EBOOK_TOOLBAR_GET', false);
// 		JToolbarHelper::custom('activate.cancel', 'cancel', null, 'COM_EBOOK_TOOLBAR_CANCEL', false);
		JToolbarHelper::cancel('activate.cancel');
		JToolbarHelper::help('JHELP_COMPONENTS_MESSAGING_READ');
		
	}
}
