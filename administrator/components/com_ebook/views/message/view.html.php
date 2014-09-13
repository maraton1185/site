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
class EbookViewMessage extends JViewLegacy
{
	protected $form;

	protected $item;

	protected $state;

	public function display($tpl = null)
	{
		$this->form		= $this->get('Form');
		$this->item		= $this->get('Item');
		$this->state	= $this->get('State');

		// Check for errors.
		if (count($errors = $this->get('Errors')))
		{
			JError::raiseError(500, implode("\n", $errors));
			return false;
		}

		parent::display($tpl);
		$this->addToolbar();
	}

	/**
	 * Add the page title and toolbar.
	 *
	 * @since   1.6
	 */
	protected function addToolbar()
	{
		if ($this->getLayout() == 'edit')
		{
			JToolbarHelper::title(JText::_('COM_EBOOK_WRITE_PRIVATE_MESSAGE'), 'envelope-opened new-privatemessage');
			JToolbarHelper::save('message.save', 'COM_EBOOK_TOOLBAR_SEND');
			JToolbarHelper::cancel('message.cancel');
			JToolbarHelper::help('JHELP_COMPONENTS_MESSAGING_WRITE');
		}
		else
		{
			JToolbarHelper::title(JText::_('COM_EBOOK_VIEW_PRIVATE_MESSAGE'), 'envelope inbox');
			$sender = JUser::getInstance($this->item->user_id_from);
			if ($sender->authorise('core.admin') || $sender->authorise('core.manage', 'com_ebook') && $sender->authorise('core.login.admin'))
			{
				JToolbarHelper::custom('message.reply', 'redo', null, 'COM_EBOOK_TOOLBAR_REPLY', false);
			}
			JToolbarHelper::cancel('message.cancel');
			JToolbarHelper::help('JHELP_COMPONENTS_MESSAGING_READ');
		}
	}
}
