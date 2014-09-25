<?php
/**
 * @package     Joomla.Plugin
 * @subpackage  Content.emailcloak
 *
 * @copyright   Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

/**
 * Email cloack plugin class.
 *
 * @package     Joomla.Plugin
 * @subpackage  Content.emailcloak
 * @since       1.5
 */
class PlgContentEbook_Price extends JPlugin
{
	/**
	 * Plugin that cloaks all emails in content from spambots via Javascript.
	 *
	 * @param   string   $context  The context of the content being passed to the plugin.
	 * @param   mixed    &$row     An object with a "text" property or the string to be cloaked.
	 * @param   mixed    &$params  Additional parameters. See {@see PlgContentEmailcloak()}.
	 * @param   integer  $page     Optional page number. Unused. Defaults to zero.
	 *
	 * @return  boolean	True on success.
	 */
	public function onContentPrepare($context, &$row, &$params, $page = 0)
	{
		// Don't run this plugin when the content is being indexed
		if ($context == 'com_finder.indexer')
		{
			return true;
		}

		if (is_object($row))
		{
			return $this->_do($row->text, $params);
		}

		return $this->_do($row, $params);
	}

	protected function _do(&$text, &$params)
	{
		/*
		 * Check for presence of {fancybox=on} which is explicits enable this
		* bot for the item.
		*/
		if (JString::strpos($text, '{ebook_price=on}') === false)
		{			
			return true;
		}
	
		$text = JString::str_ireplace('{ebook_price=on}', '', $text);
				
		
		$app = JFactory::getApplication();
		$componentParams = $app->getParams('com_ebook');
		
		$count1 = $componentParams->get('order1count');
		$total1 = $componentParams->get('order1total');
		$count2 = $componentParams->get('order2count');
		$total2 = $componentParams->get('order2total');

		$text = JString::str_ireplace('{order1count}', $count1, $text);
		$text = JString::str_ireplace('{order1total}', $total1, $text);
		$text = JString::str_ireplace('{order2count}', $count2, $text);
		$text = JString::str_ireplace('{order2total}', $total2, $text);
				 

		return true;
	
	}
	
	}
