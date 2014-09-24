<?php
/**
 * @copyright	Copyright (C) 2012 Daniel Calviño Sánchez
 * @copyright	Copyright (C) 2013 Daniel Calviño Sánchez
 * @license		GNU Affero General Public License version 3 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

$canDo = EbookHelper::getActions();
?>

<?php foreach($this->items as $i => $item): ?>
    <tr class="row<?php echo $i % 2; ?>">
        <td>
            <?php echo $item->id; ?>
        </td>
        <td>
            <?php echo JHtml::_('grid.id', $i, $item->id); ?>
        </td>
        <td>
            <?php echo $this->escape($item->name); ?>
        </td>
        <td>
            <?php echo $item->email; ?>
        </td>
        <td>
            <?php echo $item->_all; ?>
        </td>
         <td>
            <?php echo $item->activated; ?>
        </td>
        <td>
            <?php echo $item->free; ?>
        </td>
        <td>
            <?php echo $item->total; ?>
        </td>

    </tr>
<?php endforeach; ?>
