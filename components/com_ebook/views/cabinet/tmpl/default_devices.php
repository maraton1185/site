<?php
/**
 * @copyright	Copyright (C) 2012 Daniel Calviño Sánchez
 * @copyright	Copyright (C) 2013 Daniel Calviño Sánchez
 * @license		GNU Affero General Public License version 3 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

?>

<thead>

<tr>
    <th width="1%" class="nowrap">
        <?php echo JText::_('COM_EBOOK_HEADING_ROW'); ?>
    </th>
    <th width="60%">
        <?php echo JText::_('COM_EBOOK_HEADING_UUID'); ?>
    </th>
     <th width="10%">
        <?php echo JText::_('COM_EBOOK_HEADING_DEVICE_DATE'); ?>
    </th>
    
</tr>

</thead>

<tbody>

<?php foreach($this->devices as $i => $item): ?>
    <tr class="row<?php echo $i % 2; ?>">
        <td>
            <?php echo $i+1; ?>
        </td>
        <td>
            <?php echo $item->UUID; ?>
        </td>
         <td>
            <?php echo JHtml::_('date',$item->date); ?>
        </td>
    </tr>
<?php endforeach; ?>

</tbody>

<tfoot>

<tr>
    <td colspan="3"></td>
</tr>

</tfoot>
