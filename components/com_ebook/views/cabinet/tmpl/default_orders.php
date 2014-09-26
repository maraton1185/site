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
    <th width="10%">
        <?php echo JText::_('COM_EBOOK_HEADING_ID'); ?>
    </th>
    <th width="20%">
        <?php echo JText::_('COM_EBOOK_HEADING_ORDER_DATE'); ?>
    </th>
    <th width="10%">
        <?php echo JText::_('COM_EBOOK_HEADING_STATE'); ?>
    </th>
    <th width="10%">
        <?php echo JText::_('COM_EBOOK_HEADING_DEVICES'); ?>
    </th>
    <th width="50%">
        <?php echo JText::_('COM_EBOOK_HEADING_DESCRIPTION'); ?>
    </th>
    <th width="10%">
        <?php echo JText::_('COM_EBOOK_HEADING_TOTAL'); ?>
    </th>
    
     
</tr>

</thead>

<tbody>

<?php foreach($this->orders as $i => $item): ?>
    <tr class="row<?php echo $i % 2; ?>">
        <td>
            <?php echo $i+1; ?>
        </td>
        <td>
            <?php echo $item->id; ?>
        </td>
        <td>
            <?php echo JHtml::_('date',$item->date); ?>
        </td>
        <td>
            <?php if ($item->state) 
            		echo JText::_('COM_EBOOK_STATE_YES');
            	else 
            		echo JText::_('COM_EBOOK_STATE_NO');            
            ?>
        </td>
        <td>
            <?php echo $item->devices; ?>
        </td>
        <td>
            <?php echo $item->description; ?>
        </td>
        <td>
            <?php echo $item->total; ?>
        </td>
    </tr>
<?php endforeach; ?>

</tbody>

<tfoot>

<tr>
    <td colspan="7"></td>
</tr>

</tfoot>
