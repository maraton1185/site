<?php
/**
 * @copyright	Copyright (C) 2012 Daniel Calviño Sánchez
 * @copyright	Copyright (C) 2013 Daniel Calviño Sánchez
 * @license		GNU Affero General Public License version 3 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

$canDo = EbookHelper::getActions();
?>

<?php foreach($this->items as $i => $item): 
    $canEdit = $canDo->get('core.edit');
?>
    <tr class="row<?php echo $i % 2; ?>">
        <td>
            <?php echo $item->id; ?>
        </td>
        <td>
            <?php echo JHtml::_('grid.id', $i, $item->id); ?>
        </td>
        <td>
            <?php if ($canEdit) : ?>
            <a href="<?php echo JRoute::_('index.php?option=com_ebook&task=device.edit&id='.(int) $item->id); ?>" title="<?php echo JText::_('COM_EBOOK_EDIT_TITLE'); ?>">
                <?php echo $this->escape($item->name); ?>
            </a>
            <?php else : ?>
                <?php echo $this->escape($item->name); ?>
            <?php endif; ?>
        </td>
        <td>
            <?php echo $item->email; ?>
        </td>
        <td>
            <?php echo $item->UUID; ?>
        </td>
         <td>
            <?php echo $item->date; ?>
        </td>

    </tr>
<?php endforeach; ?>
