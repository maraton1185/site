<?php


defined('_JEXEC') or die;

if (!JFactory::getUser()->authorise('core.manage', 'com_license'))
{
	return JError::raiseWarning(404, JText::_('JERROR_ALERTNOAUTHOR'));
}

$task = JFactory::getApplication()->input->get('task');

$controller	= JControllerLegacy::getInstance('License');
$controller->execute(JFactory::getApplication()->input->get('task'));
$controller->redirect();
