<?php
// No direct access to this file
defined('_JEXEC') or die('Restricted access');
 
// import Joomla modelitem library
// jimport('joomla.application.component.modelitem');
require_once JPATH_COMPONENT_ADMINISTRATOR.'/helpers/crypt.php';
 
/**
 * HelloWorld Model
 */
class EbookModelContact extends JModelLegacy
{
 
        public function getAnswer()
        {
        	$app = JFactory::getApplication();
        	
        	if(JString::strcasecmp($app->input->getMethod(),'post'))
        	{
        		$this->setError('error post');
        		return false;
        	}
        	
        	$msg = $app->input->getString('msg');
        	
        	//return $msg;
        	 
        	$mcrypt = new CryptHelper();
        	$decripted = $mcrypt->decrypt($msg);
        	
        	if(!$decripted){
        		return "!00";
        	}
        	
        	$input = $mcrypt->getData($decripted);

        	
        	if(!$input->name||!$input->msg_text||!$input->msg_type)
        	{
        		$input->error = "11";
        		return $mcrypt->encrypt($mcrypt->getString($input));
        	}

        	$registry = new JRegistry;
        	$registry->loadObject($input);
        	$input = $registry;
        	 
        	$config = JFactory::getConfig();
        	$db = $this->getDbo();
        	$query = $db->getQuery(true);
        	
        	// Compile the notification mail values.
        	$data['name'] = $input->get('name');
        	$data['fromname'] = $config->get('fromname');
        	$data['mailfrom'] = $config->get('mailfrom');
        	$data['sitename'] = $config->get('sitename');
        	$data['siteurl'] = JUri::root();
        	
        	
        	$emailSubject = JText::sprintf(
        			'COM_EBOOK_EMAIL_CONTACT_RECIEVED_DETAILS',
        			$data['sitename']
        	
        	);
        	 
        	$emailBody = JText::sprintf(
        			'COM_EBOOK_EMAIL_CONTACT_RECIEVED_BODY',
        			$input->get('msg_type'),
        			$input->get('msg_text'),
        			$data['name'],
        			$data['mailfrom']
        	);
        	
        	$return = JFactory::getMailer()->sendMail($data['mailfrom'], $data['fromname'], $data['name'], $emailSubject, $emailBody);
        	 
        	//Check for an error.
        	if ($return !== true)
        	{
        		$input->error = "14";
        		return $mcrypt->encrypt($mcrypt->getString($input));
        	}
        	
        	// Send Notification mail to administrators
        	
        	$emailSubject = JText::sprintf(
        			'COM_EBOOK_EMAIL_CONTACT_DETAILS',
        			$input->get('msg_type'),
        			$data['sitename'],
        			$data['name']
        			
        	);
        	
        	$emailBody = JText::sprintf(
        			'COM_EBOOK_EMAIL_CONTACT_ADMIN_BODY',    		
           			$input->get('msg_text')
        	);
        	
        	// Get all admin users
        	$query->clear()
        		->select($db->quoteName(array('name', 'email', 'sendEmail')))
        		->from($db->quoteName('#__users'))
        		->where($db->quoteName('sendEmail') . ' = ' . 1);
        	
        	$db->setQuery($query);
        	
        	try
        	{
        		$rows = $db->loadObjectList();
        	}
        	catch (RuntimeException $e)
        	{
        		$input->error = "12";
        		return $mcrypt->encrypt($mcrypt->getString($input));
        	}
        	     		
        	// Send mail to all superadministrators id
        	foreach ($rows as $row)
        	{
//         		var_dump($row->email);
        		$return = JFactory::getMailer()->sendMail($data['mailfrom'], $data['fromname'], $row->email, $emailSubject, $emailBody);
        	
//         		Check for an error.
        		if ($return !== true)
        		{
        			$input->error = "13";
        			return $mcrypt->encrypt($mcrypt->getString($input));
        		}
        	}
        		
        	return $mcrypt->encrypt($mcrypt->getString($input));
        	

        }
        
       
}