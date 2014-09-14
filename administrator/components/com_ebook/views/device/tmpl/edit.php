<?php
/**
 * @copyright	Copyright (C) 2012 Daniel Calviño Sánchez
 * @copyright	Copyright (C) 2013 Daniel Calviño Sánchez
 * @license		GNU Affero General Public License version 3 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

JHtml::_('behavior.tooltip');
JHtml::_('behavior.formvalidation');
?>

<script type="text/javascript">
	Joomla.submitbutton = function(task)
	{
		if (task == 'device.cancel' || document.formvalidator.isValid(document.id('adminForm')))
		{
			Joomla.submitform(task, document.getElementById('adminForm'));
		}
	}

</script>

<form action="<?php echo JRoute::_('index.php?option=com_ebook&view=device&layout=edit&id='.(int) $this->item->id); ?>" method="post" name="adminForm" id="adminForm" class="form-validate form-horizontal">
   
   <?php if (!empty( $this->sidebar)) : ?>
	<div id="j-sidebar-container" class="span2">
		<?php echo $this->sidebar; ?>
	</div>
	<div id="j-main-container" class="span10">
<?php else : ?>
	<div id="j-main-container">
<?php endif;?>
   
   <div class="clearfix"></div>
        <fieldset class="adminform">
            <legend><?php echo JText::_( 'COM_EBOOK_DEVICE_DETAILS' ); ?></legend>
<?php $hiddenFields = ''; ?>
<?php foreach($this->form->getFieldset('details') as $field): ?>
<?php     if (!$field->hidden): ?>
            <div class="control-group">
                <div class="control-label"><?php echo $field->label; ?></div>
                <div class="controls"><?php echo $field->input; ?></div>
            </div>
<?php     else: ?>
<?php         $hiddenFields .= $field->input; ?>
<?php     endif; ?>
<?php endforeach; ?>
<?php echo $hiddenFields; ?>
        </fieldset>
    
  
    <div>
        <input type="hidden" name="task" value="device.edit" />
        <?php echo JHtml::_('form.token'); ?>
    </div>
    </div>
</form>
