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
 * Private Message model.
 *
 * @package     Joomla.Administrator
 * @subpackage  com_ebook
 * @since       1.6
 */
class EbookModelActivate extends JModelAdmin
{
	/**
	 * Message
	 */
	//protected $item;

	/**
	 * Method to auto-populate the model state.
	 *
	 * @note    Calling getState in this method will result in recursion.
	 *
	 * @since   1.6
	 */
	protected function populateState()
	{
		//parent::populateState();

		/*
		$input = JFactory::getApplication()->input;

		$user  = JFactory::getUser();
		$this->setState('user.id', $user->get('id'));

		$messageId = (int) $input->getInt('message_id');
		$this->setState('message.id', $messageId);

		$replyId = (int) $input->getInt('reply_id');
		$this->setState('reply.id', $replyId);
		*/
	}

	public function getItem($pk = null){
		$data =  new stdClass;
		$data -> subject = 'hello)';
		return $data;
	}

	/**
	 * Method to get the record form.
	 *
	 * @param   array   $data       Data for the form.
	 * @param   boolean $loadData   True if the form is to load its own data (default case), false if not.
	 * 
	 * @return  JForm   A JForm object on success, false on failure
	 *
	 * @since   1.6
	 */
	public function getForm($data = array(), $loadData = true)
	{
		// Get the form.
		$form = $this->loadForm('com_ebook.activate', 'activate', array('control' => 'jform', 'load_data' => $loadData));

		if (empty($form))
		{
			return false;
		}

		return $form;
	}

	/**
	 * Method to get the data that should be injected in the form.
	 *
	 * @return  mixed  The data for the form.
	 *
	 * @since   1.6
	 */
	protected function loadFormData()
	{
		// Check the session for previously entered form data.
		$data = JFactory::getApplication()->getUserState('com_ebook.edit.message.data', array());

		if (empty($data))
		{			
			$data = $this->getItem();
		}

		//$this->preprocessData('com_ebook.activate', $data);

		return $data;
	}

	
}
