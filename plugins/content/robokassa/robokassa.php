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
class PlgContentRobokassa extends JPlugin
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
			return $this->_robokassa($row->text, $params);
		}

		return $this->_robokassa($row, $params);
	}

	protected function _robokassa(&$text, &$params)
	{
		
		/*
		 * Check for presence of {fancybox=on} which is explicits enable this
		* bot for the item.
		*/
		if (JString::strpos($text, '{robokassa=on}') === false)
		{			
			return true;
		}
	
		$text = JString::str_ireplace('{robokassa=on}', '', $text);
	
		
// 		// your registration data
// 		$mrh_login = "test";      // your login here
// 		$mrh_pass1 = "securepass1";   // merchant pass1 here
		
// 		// order properties
// 		$inv_id    = 5;        // shop's invoice number
// 		// (unique for shop's lifetime)
// 		$inv_desc  = "desc";   // invoice desc
// 		$out_summ  = "5.12";   // invoice summ
		
// 		// build CRC value
// 		$crc  = md5("$mrh_login:$out_summ:$inv_id:$mrh_pass1");
		
// 		// build URL
// 		$url = "https://auth.robokassa.ru/Merchant/Index.aspx?MrchLogin=$mrh_login&".
// 				"OutSum=$out_summ&InvId=$inv_id&Desc=$inv_desc&SignatureValue=$crc";
		
// 		// print URL if you need
// 		echo "<a href='/ru/$url'>Payment link</a>";
		
		$pattern = '({robokassa3:.*})';
		while (preg_match($pattern, $text, $m, PREG_OFFSET_CAPTURE))
		{
			$t = $m[0][0];
			$i = $m[0][1];
			$repl = str_replace('{robokassa3:', '', $t);
			$repl = str_replace('}', '', $repl);
			$text=substr_replace($text, '<a href="#" class="btn btn-warning btn-block">'.$repl.'</a>', $i, strlen($t));
			
		}
	
		$pattern = '({robokassa10:.*})';
		while (preg_match($pattern, $text, $m, PREG_OFFSET_CAPTURE))
		{
			$t = $m[0][0];
			$i = $m[0][1];
			$repl = str_replace('{robokassa10:', '', $t);
			$repl = str_replace('}', '', $repl);
			$text=substr_replace($text, '<a href="#" class="btn btn-success btn-block">'.$repl.'</a>', $i, strlen($t));
				
		}
		

		return true;
	
	}
	

	}
