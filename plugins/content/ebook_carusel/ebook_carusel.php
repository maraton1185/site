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
class PlgContentEbook_Carusel extends JPlugin
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
		if (JString::strpos($text, '{ebook_carusel=on}') === false)
		{			
			return true;
		}
	
		$text = JString::str_ireplace('{ebook_carusel=on}', '', $text);
		
		$this->loadScript('example_anim.js');
		$this->loadScript('carusel.js');
		
		$variables = array(
				'elements' => '',
				'options' => '',
		);
		$script = $this->loadTemplate('script.php', $variables);
		// Add the script-declaration
		$document = JFactory::getDocument();
		$document->addScriptDeclaration($script);
		
		$text = JString::str_ireplace('{slider}', '
				<div>
				<canvas id="anim_target" class="anim_target" width="800" height="450">
					<div id="anim_fallback" class="anim_target" style="width: 800px; height: 450px; position: relative;"></div>
				</canvas>
				</div>
				
				', $text);
				
		//find img with class=fancybox
// 		$pattern = '(<img\s+class="[^>]*fancygroup[^>]*>)';
		
// 		while (preg_match($pattern, $text, $m, PREG_OFFSET_CAPTURE))
// 		{
// 			$img = $m[0][0];
// 			$i = $m[0][1];
			
// 			//replace fancybox to fancybox_
// // 			$replacement=str_replace('fancybox', 'fancybox_', $matches[0][0]);
// 			preg_match( '(fancygroup[0-9]*)', $img, $m1, PREG_OFFSET_CAPTURE);
// 			$rel = str_replace('fancygroup', '', $m1[0][0]);			
// 			$replacement=substr_replace($img, 'fancy', $m1[0][1], strlen($m1[0][0]));
			
// 			//href
// 			preg_match( '(src="[^"]*)', $img, $m2, PREG_OFFSET_CAPTURE);
// 			$ref=str_replace('src="', '', $m2[0][0]);
			
			
// 			$text = substr_replace($text, '<a class="lightbox thumbnail" rel="group'.$rel.'" href="'.$ref.'">'.$replacement.'</a>', $i, strlen($img));
// 		} 

		return true;
	
	}
	
	
	private function loadTemplate($file = null, $variables = true)
	{
		// Base file
		$templateFile = JPATH_SITE.'/plugins/content/'.$this->_name.'/tmpl/'.$file;
	
		// Check for overrides
		$template = JFactory::getApplication()->getTemplate();
		if(file_exists(JPATH_SITE.'/templates/'.$template.'/html/plg_carusel/'.$file)) {
			$templateFile = JPATH_SITE.'/templates/'.$template.'/html/plg_carusel/'.$file;
		}
	
		$output = null;
	
		// Include the variables here
		if (!empty($variables)) {
			foreach ($variables as $name => $value) {
				$$name = $value;
			}
		}
	
		// Unset so as not to introduce into template scope
		unset($file);
	
		// Never allow a 'this' property
		if (isset($this->this)) {
			unset($this->this);
		}
	
		// Unset variables
		unset($variables);
		unset($name);
		unset($value);
	
		// Start capturing output into a buffer
		ob_start();
		include $templateFile;
	
		// Done with the requested template; get the buffer and clear it.
		$output = ob_get_contents();
		ob_end_clean();
	
		$output = str_replace("\n", "", $output);
		return $output;
	}
	
	private function loadScript($file = null, $condition = true)
	{
		$condition = (bool)$condition;
		if($condition == true) {
	
			if(preg_match('/^jquery-([0-9\.]+).min.js$/', $file, $match) && $this->getParams()->get('use_google_api', 0) == 1) {
	
				if(JURI::getInstance()->isSSL() == true) {
					$script = 'https://ajax.googleapis.com/ajax/libs/jquery/'.$match[1].'/jquery.min.js';
				} else {
					$script = 'http://ajax.googleapis.com/ajax/libs/jquery/'.$match[1].'/jquery.min.js';
				}
	
				JFactory::getDocument()->addScript($script);
				return;
			}
	
			$folder = 'media/plg_'.$this->_name.'/js/';
	
			// Check for overrides
			$template = JFactory::getApplication()->getTemplate();
			if(file_exists(JPATH_SITE.'/templates/'.$template.'/html/plg_carusel/js/'.$file)) {
				$folder = 'templates/'.$template.'/html/plg_carusel/js/';
			}
	
			JFactory::getDocument()->addScript($folder.$file);
		}
	}
	
	private function loadStylesheet($file = null, $condition = true)
	{
		$condition = (bool)$condition;
		if($condition == true) {
	
			$folder = 'media/plg_'.$this->_name.'/css/';
	
			// Check for overrides
			$template = JFactory::getApplication()->getTemplate();
			if(file_exists(JPATH_SITE.'/templates/'.$template.'/html/plg_carusel/css/'.$file)) {
				$folder = 'templates/'.$template.'/html/plg_carusel/css/';
			}
	
			JFactory::getDocument()->addStylesheet($folder.$file);
		}
	}
	
	}
