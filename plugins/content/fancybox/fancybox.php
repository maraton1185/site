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
class PlgContentFancybox extends JPlugin
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
			return $this->_fancy($row->text, $params);
		}

		return $this->_fancy($row, $params);
	}

	protected function _fancy(&$text, &$params)
	{
		/*
		 * Check for presence of {fancybox=on} which is explicits enable this
		* bot for the item.
		*/
		if (JString::strpos($text, '{fancybox=on}') === false)
		{			
			return true;
		}
	
		$text = JString::str_ireplace('{fancybox=on}', '', $text);
				
		//find img with class=fancybox
		$pattern = '(<img\s+class="[^>]*fancybox[\s*\"][^>]*>)';
		
		while (preg_match($pattern, $text, $matches, PREG_OFFSET_CAPTURE))
		{
			$reg = $matches[0][0];
			$start = $matches[0][1];
			
			//replace fancybox to fancybox_
			$replacement=str_replace('fancybox', 'fancybox_', $matches[0][0]);
// 			preg_match( '([\s*\"]fancybox[\s*\"])', $reg, $matches1, PREG_OFFSET_CAPTURE);			
// 			$replacement=substr_replace($reg, 'fancybox_', $matches1[0][1], strlen($matches1[0][0]));
			
			//href
			preg_match( '(src="[^"]*)', $replacement, $matches2, PREG_OFFSET_CAPTURE);
			$ref=str_replace('src="', '', $matches2[0][0]);
									
			$text = substr_replace($text, '<a class="lightbox" rel="group" href="'.$ref.'">'.$replacement.'</a>', $start, strlen($reg));
		} 

		return true;
	
	}
	
	}
