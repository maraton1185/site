<?php
/**
* @package Joomla.Administrator
* @subpackage com_helloworld
*
* @copyright Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
* @license GNU General Public License version 2 or later; see LICENSE.txt
*/
 
// No direct access to this file
defined('_JEXEC') or die;
//dump($this, 'Variable Name');
?>


asdasd
<ul class="btn-toolbar pull-right">
	<li class="btn-group">
		<a class="btn" href="<?php echo JRoute::_('index.php?option=com_content&view=article&id=9&catid=8&Itemid=114');?>">
			<span class="icon-question-sign"></span> <?php echo JText::_('COM_EBOOK_TITLE_ACTIVATE'); ?></a>
	</li>
	
	<li class="btn-group">
		<a class="btn" href="<?php echo JRoute::_('index.php?option=com_content&view=article&id=11&catid=8&Itemid=114');?>">
			<span class="icon-question-sign"></span> <?php echo JText::_('COM_EBOOK_TITLE_BUY'); ?></a>
	</li>
</ul>

<fieldset>
	<legend>
		<?php echo JText::_('COM_EBOOK_TITLE_INFO'); ?>
	</legend>

	<?php echo $this->loadTemplate('info');?>  
</fieldset>


<fieldset>
	<legend>
		<?php echo JText::_('COM_EBOOK_TITLE_ORDERS'); ?>
	</legend>
	
	<table class="table table-striped">
    	<?php echo $this->loadTemplate('orders');?>  
	</table>	
</fieldset>

<fieldset>
	<legend>
		<?php echo JText::_('COM_EBOOK_TITLE_DEVICES'); ?>
	</legend>
	
	<table class="table table-striped">
    	<?php echo $this->loadTemplate('devices');?>  
	</table>
</fieldset>

