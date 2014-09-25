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
class PlgContentEbook_Fancybox extends JPlugin
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
		if (JString::strpos($text, '{ebook_fancybox=on}') === false)
		{			
			return true;
		}
	
		$text = JString::str_ireplace('{ebook_fancybox=on}', '', $text);
				
		//find img with class=fancybox
		$pattern = '(<img\s+class="[^>]*fancygroup[^>]*>)';
		
		while (preg_match($pattern, $text, $m, PREG_OFFSET_CAPTURE))
		{
			$img = $m[0][0];
			$i = $m[0][1];
			
			//replace fancybox to fancybox_
// 			$replacement=str_replace('fancybox', 'fancybox_', $matches[0][0]);
			preg_match( '(fancygroup[0-9]*)', $img, $m1, PREG_OFFSET_CAPTURE);
			$rel = str_replace('fancygroup', '', $m1[0][0]);			
			$replacement=substr_replace($img, 'fancy', $m1[0][1], strlen($m1[0][0]));
			
			//href
			preg_match( '(src="[^"]*)', $img, $m2, PREG_OFFSET_CAPTURE);
			$ref=str_replace('src="', '', $m2[0][0]);
			
			
			$text = substr_replace($text, '<a class="lightbox thumbnail" rel="group'.$rel.'" href="'.$ref.'">'.$replacement.'</a>', $i, strlen($img));
		} 

		return true;
	
	}
	
	}
