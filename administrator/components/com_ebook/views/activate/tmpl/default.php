<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_ebook
 *
 * @copyright   Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */
defined ( '_JEXEC' ) or die ();

// Include the component HTML helpers.
JHtml::addIncludePath ( JPATH_COMPONENT . '/helpers/html' );

JHtml::_('behavior.formvalidation');

// JHtml::_('bootstrap.tooltip');
// JHtml::_('behavior.multiselect');
// JHtml::_('formbehavior.chosen', 'select');

$user = JFactory::getUser ();
// $listOrder = $this->escape($this->state->get('list.ordering'));
// $listDirn = $this->escape($this->state->get('list.direction'));
?>

<script type="text/javascript">
	Joomla.submitbutton = function(task)
	{
		if (task == 'activate.cancel' || document.formvalidator.isValid(document.id('adminForm')))
		{
			Joomla.submitform(task, document.getElementById('adminForm'));
		}
	}

</script>

<form
	action="<?php echo JRoute::_('index.php?option=com_ebook&view=activate'); ?>"
	method="post" name="adminForm" id="adminForm" class="form-validate form-horizontal">
<?php if (!empty( $this->sidebar)) : ?>
	<div id="j-sidebar-container" class="span2">
		<?php echo $this->sidebar; ?>
	</div>
	<div id="j-main-container" class="span10">
<?php else : ?>
	<div id="j-main-container">
<?php endif;?>
		
			<div class="clearfix"></div>

			<fieldset>

			 <?php foreach ($this->form->getFieldset('default') as $field) : ?>
            <div class="control-group">
					<div class="control-label">
                  <?php echo $field->label; ?>
               </div>
					<div class="controls">
                  <?php echo $field->input; ?>
               </div>
				</div>
         <?php endforeach; ?>
         

			</fieldset>



			<div>
				<input type="hidden" name="task" value="" /> <input type="hidden"
					name="boxchecked" value="0" /> <input type="hidden"
					name="filter_order" value="<?php echo $listOrder; ?>" /> <input
					type="hidden" name="filter_order_Dir"
					value="<?php echo $listDirn; ?>" />
			<?php echo JHtml::_('form.token'); ?>
		</div>
		</div>

</form>
