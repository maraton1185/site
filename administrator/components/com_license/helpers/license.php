<?php

defined('_JEXEC') or die;

class LicenseHelper
{

	public static function addSubmenu($vName)
	{

		JHtmlSidebar::addEntry(
			JText::_('COM_MESSAGES_ADD'),
			'index.php?option=com_license&view=orders',
			$vName == 'orders'
			);

		JHtmlSidebar::addEntry(
			JText::_('COM_MESSAGES_READ'),
			'index.php?option=com_license',
			$vName == 'licenses'
			);
	}
}
