<?php
/**
 * Joomla! System plugin - jQuery Fancybox
 *
 * @author Yireo (info@yireo.com)
 * @copyright Copyright 2013 Yireo.com. All rights reserved
 * @license GNU Public License
 * @link http://www.yireo.com
 */

// Check to ensure this file is included in Joomla!
defined('_JEXEC') or die( 'Restricted access' );

?>

jQuery.noConflict();
jQuery(document).ready(function() {

	set_animation("/media/plg_carusel/example_packed.png", example_timeline, 'anim_target', 'anim_fallback');

	jQuery('.carousel').carousel({
	  interval: 5000
	});
	
});
