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

		
		//$input = JFactory::getApplication()->input;

		$user  = JFactory::getUser();
		$this->setState('user.id', $user->get('id'));

// 		$messageId = (int) $input->getInt('message_id');
// 		$this->setState('message.id', $messageId);

// 		$replyId = (int) $input->getInt('reply_id');
// 		$this->setState('reply.id', $replyId);
		
	}

	public function getItem($pk = null){
		
		$data =  new stdClass;
// 		$data -> subject = 'hello))';				
		$data -> user_id = JFactory::getUser()->get('id');
		
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
		$context = 'com_ebook.default.activate';
		// Check the session for previously entered form data.
		$data = JFactory::getApplication()->getUserState($context.'.data', array());

		if (empty($data))
		{			
			$data = $this->getItem();			
		}

		$app   = JFactory::getApplication();
		$app->setUserState($context.'.data', null);
		
		//$this->preprocessData('com_ebook.activate', $data);

		return $data;
	}
	
	public function getLicense($data = array())
	{
		
		$user_id = $data['user_id'];
		$user  = JFactory::getUser($user_id);
		$uuid = $data['UUID'];
		if (!isset($user)||!isset($uuid)||!isset($user))
		{
			$this->setError(JText::_('COM_EBOOK_MODEL_LICENSE_ERROR'));
			return false;
		}
		
		
// 		$data =  new stdClass;
		$data['email'] = $user->get('email');
		$data['password'] = $this->_randomPassword();
		$data['serial'] = $this->_getSerial($data);
		return $data;
	}
	
	private function _getSerial($data = array()) {
				
		require_once JPATH_COMPONENT.'/helpers/crypt.php';
		
		$msg = "name=".$data['email']."&".
				"password=".$data['password']."&".
				"serial=".$data['UUID']."&".
				"activated=true";
		
		$mcrypt = new CryptHelper();
		return $mcrypt->encrypt($msg);
// 		return $mcrypt->decrypt($mcrypt->encrypt("hello"));
	}
	
	private function _randomPassword() {
		$alphabet = "abcdefghijklmnopqrstuwxyzABCDEFGHIJKLMNOPQRSTUWXYZ0123456789";
		$pass = array(); //remember to declare $pass as an array
		$alphaLength = strlen($alphabet) - 1; //put the length -1 in cache
		for ($i = 0; $i < 8; $i++) {
			$n = rand(0, $alphaLength);
			$pass[] = $alphabet[$n];
		}
		return implode($pass); //turn the array into a string
	}

	
}
