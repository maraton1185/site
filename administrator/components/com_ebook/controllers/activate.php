<?php

defined('_JEXEC') or die;

class EbookControllerActivate extends JControllerForm
{

// 	protected $default_view = 'activate';
	 
	
	public function getLicense($key = null)
	{
		JSession::checkToken() or jexit(JText::_('JINVALID_TOKEN'));
	 	 
		$app   = JFactory::getApplication();
		$model = $this->getModel();
		$data  = $this->input->post->get('jform', array(), 'array');
		$task = $this->getTask();
		$context = "$this->option.default.$this->context";	
		
// 		require_once JPATH_COMPONENT.'/helpers/validate.php';

		// Validate the posted data.
		// Sometimes the form needs some posted data, such as for plugins and modules.
		$form = $model->getForm($data, false);
		
		if (!$form)
		{
			$app->enqueueMessage($model->getError(), 'error');
		
			return false;
		}
		
		// Test whether the data is valid.
		$validData = $model->validate($form, $data);
		
		// Check for validation errors.
		if ($validData === false)
		{
			// Get the validation messages.
			$errors = $model->getErrors();
		
			// Push up to three validation messages out to the user.
			for ($i = 0, $n = count($errors); $i < $n && $i < 3; $i++)
			{
				if ($errors[$i] instanceof Exception)
				{
					$app->enqueueMessage($errors[$i]->getMessage(), 'warning');
				}
				else
				{
					$app->enqueueMessage($errors[$i], 'warning');
				}
			}
		
			// Save the data in the session.
			$app->setUserState($context . '.data', $data);
		
			// Redirect back to the edit screen.
			$this->setRedirect(
					JRoute::_(
							'index.php?option=' . $this->option . '&view=' . $this->view_item, false
					)
			);
		
			return false;
		}
		
		if (!isset($validData['tags']))
		{
			$validData['tags'] = null;
		}
				
		$data = $model->getLicense($validData); 
		if (!$data)
		{
			// Save the data in the session.
			$app->setUserState($context . '.data', $validData);
		
			// Redirect back to the edit screen.
			$this->setError(JText::sprintf('JLIB_APPLICATION_ERROR_SAVE_FAILED', $model->getError()));
			$this->setMessage($this->getError(), 'error');
		
			$this->setRedirect(
					JRoute::_(
							'index.php?option=' . $this->option . '&view=' . $this->view_item, false
					)
			);
		
			return false;
		}
		
		$app->setUserState($context . '.data', $data);
		
 		$this->setMessage(JText::_('COM_EBOOK_MODEL_LICENSE_SUCCESS'));
		$this->setRedirect('index.php?option=com_ebook&view=activate');
			
	
		return true;
	}
	
	public function cancel($key = null)
	{
		JSession::checkToken() or jexit(JText::_('JINVALID_TOKEN'));
		
		$app   = JFactory::getApplication();
		$context = "$this->option.default.$this->context";
		$app->setUserState($context . '.data', null);
		
		$this->setRedirect(
				JRoute::_(
						'index.php?option=' . $this->option . '&view=' . $this->view_item, false
				)
		);
		
// 		$this->setRedirect(
// 				JRoute::_(
// 						'index.php?option=' . $this->option , false
// 				)
// 		);
		
		return true;
	}
	
}