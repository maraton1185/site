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
		<span id="content_index">1 / 6</span>
		<a class="carousel-control right skip" href="javascript:next()">›</a>		
	</div>

	<div id="content" style="text-align: left; position: relative; margin-right: 170px;">
		<div id="content1" style="display: block;">
			Организация портала документации в несколько кликов.			
		</div>

		<div id="content2" style="display: none;">
			Наполнение портала с помощью системы управления содержимым.					
		</div>

		<div id="content3" style="display: none;">
			Загрузка модулей конфигурации 1С.
		</div>

		<div id="content4" style="display: none;">
			Поиск объекта конфигурации. Поиск текста в модулях конфигурации.
		</div>

		<div id="content5" style="display: none;">
			Анализ кода конфигурации.
		</div>

		<div id="content6" style="display: none;">
			Связь описания с реализацией. Прикрепление контекста к разделу документации.
		</div>
	</div>
</div>