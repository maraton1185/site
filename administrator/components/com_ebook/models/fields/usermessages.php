<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_ebook
 *
 * @copyright   Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

JFormHelper::loadFieldClass('user');

/**
 * Supports an modal select of user that have access to com_ebook
 *
 * @package     Joomla.Administrator
 * @subpackage  com_ebook
 * @since       1.6
 */
class JFormFieldUserEbook extends JFormFieldUser
{
	/**
	 * The form field type.
	 *
	 * @var		string
	 * @since   1.6
	 */
	public $type = 'UserEbook';

	/**
	 * Method to get the filtering groups (null means no filtering)
	 *
	 * @return  array|null	array of filtering groups or null.
	 * @since   1.6
	 */
	protected function getGroups()
	{
		// Compute usergroups
		$db = JFactory::getDbo();
		$query = $db->getQuery(true)
			->select('id')
			->from('#__usergroups');
		$db->setQuery($query);

		try
		{
			$groups = $db->loadColumn();
		}
		catch (RuntimeException $e)
		{
			JError::raiseNotice(500, $e->getMessage());
			return null;
		}

		foreach ($groups as $i => $group)
		{
			if (JAccess::checkGroup($group, 'core.admin'))
			{
				continue;
			}
			if (!JAccess::checkGroup($group, 'core.manage', 'com_ebook'))
			{
				unset($groups[$i]);
				continue;
			}
			if (!JAccess::checkGroup($group, 'core.login.admin'))
			{
				unset($groups[$i]);
				continue;
			}
		}
		return array_values($groups);
	}

	/**
	 * Method to get the users to exclude from the list of users
	 *
	 * @return  array|null array of users to exclude or null to to not exclude them
	 * @since   1.6
	 */
	protected function getExcluded()
	{
		return array(JFactory::getUser()->id);
	}
}
