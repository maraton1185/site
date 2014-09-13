<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_ebook
 *
 * @copyright   Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

$text = JText::_('COM_EBOOK_TOOLBAR_MY_SETTINGS');
?>
<a rel="{handler:'iframe', size:{x:700,y:300}}" href="index.php?option=com_ebook&amp;view=config&amp;tmpl=component" title="<?php echo $text; ?>" class="messagesSettings btn btn-small">
	<i class="icon-cog"></i> <?php echo $text; ?>
</a>
