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

<div>
	<canvas id="target" class="anim_target" width="940" height="500">
		<div id="fallback" class="anim_target" 
			style="width: 940px; height: 500px; position: relative;">
		</div>
	</canvas>
</div>

<div class="anim_caption">
	<div class="controls" style="float: right; position: relative; width: 170px; paddding; margin-top: 12px;">
		<a class="carousel-control left skip" href="javascript:prev()">‹</a>
		<span id="content_index">1 / 2</span>
		<a class="carousel-control right skip" href="javascript:next()">›</a>		
	</div>

	<div id="content" style="text-align: left; position: relative; margin-right: 170px;">
		<div id="content1" style="display: none;">
			Use Multiple Selections to rename variables quickly.<br>Here <span
				class="pc key">Ctrl+D</span><span class="mac key">⌘D</span> is used
			to select the next occurrence of the current word.
		</div>

		<div id="content2" style="display: block;">
			Make batch edits with Multiple Selections.<br>Here <span
				class="pc key">Ctrl+Shift+L</span><span class="mac key">⇧⌘L</span>
			is used to split a selection into lines, and each line is then edited
			simultaneously.
		</div>

		<div id="content3" style="display: none;">
			The Command Palette gives fast access to functionality.<br>Here <span
				class="pc key">Ctrl+Shift+P</span><span class="mac key">⇧⌘P</span>
			is used to show the Command Palette, "sspy" (short for Set Syntax:
			Python) is used set the syntax of the current file to Python.
		</div>

		<div id="content4" style="display: none;">
			Use Goto Anything to quickly navigate between files, even in the
			largest projects.<br>
			<span class="pc key">Ctrl+P</span><span class="mac key">⌘P</span>
			shows Goto Anything, and typing then filters on file and directory
			names.
		</div>

		<div id="content5" style="display: none;">
			Goto Anything can also be used to show a function, line or word
			within a file.<br>Type @ after a file name to filter on symbols. <a
				href="http://www.sublimetext.com/blog/articles/sublime-text-2-public-alpha">More...</a>
		</div>

		<div id="content6" style="display: none;">
			Find and Replace with regular expressions.<br>Here unwanted
			whitespace is removed by using the regex " +" to find groups of
			spaces, which are then selected simultaneously with the Find All
			button.
		</div>
	</div>
</div>