<?php
/**
 * @copyright	Copyright (C) 2012 Daniel Calviño Sánchez
 * @copyright	Copyright (C) 2013 Daniel Calviño Sánchez
 * @license		GNU Affero General Public License version 3 or later; see LICENSE.txt
 */
defined ( '_JEXEC' ) or die ();

$item = $this->info;

?>

<dl class="dl-horizontal">
	<dt>
			<?php echo JText::_('COM_EBOOK_INFO_ALL_LABEL'); ?>
		</dt>
	<dd>
			 <?php echo $item->_all; ?>
		</dd>

	<dt>
			<?php echo JText::_('COM_EBOOK_INFO_ACTIVATED_LABEL'); ?>
		</dt>
	<dd>
			 <?php echo $item->activated; ?>
		</dd>
	<dt>
			<?php echo JText::_('COM_EBOOK_INFO_FREE_LABEL'); ?>
		</dt>
	<dd>
			 <?php echo $item->free; ?>
		</dd>
	<dt>
			<?php echo JText::_('COM_EBOOK_INFO_TOTAL_LABEL'); ?>
		</dt>
	<dd>
			 <?php echo $item->total; ?>
		</dd>

</dl>