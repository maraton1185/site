<?php
/**
 * @copyright	Copyright (C) 2012 Daniel Calviño Sánchez
 * @license		GNU Affero General Public License version 3 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
?>

<tr>
    <th width="1%" class="nowrap">
        <?php echo JHtml::_('grid.sort', 'COM_EBOOK_HEADING_ID', 'id', $this->listDirection, $this->listOrder); ?>
    </th>
    <th width="1%">
        <input type="checkbox" name="toggle" value="" onclick="checkAll(<?php echo count($this->items); ?>);" />
    </th>
    <th width="30%">
        <?php echo JHtml::_('grid.sort', 'COM_EBOOK_HEADING_USER', 'user_id', $this->listDirection, $this->listOrder); ?>
    </th>
    <th width="30%">
        <?php echo JHtml::_('grid.sort', 'COM_EBOOK_HEADING_EMAIL', 'email', $this->listDirection, $this->listOrder); ?>
    </th>
    <th width="40%">
        <?php echo JHtml::_('grid.sort', 'COM_EBOOK_HEADING_UUID', 'UUID', $this->listDirection, $this->listOrder); ?>
    </th>
    
</tr>
