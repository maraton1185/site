<?php
/**
 * @copyright	Copyright (C) 2012 Daniel Calviño Sánchez
 * @copyright	Copyright (C) 2014 Daniel Calviño Sánchez
 * @license		GNU Affero General Public License version 3 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

/**
 * View for the form to edit a route.
 * It uses Joomla infrastructure.
 */
class EbookViewOrder extends JViewLegacy {

    /**
     * Displays the view.
     */
    public function display($tpl = null) {
    	
    	require_once JPATH_COMPONENT.'/helpers/ebook.php';
    	
        $form = $this->get('Form');
        $item = $this->get('Item');

        if (count($errors = $this->get('Errors'))) {
            JError::raiseError(500, implode('<br />', $errors));
            return false;
        }

        EbookHelper::addSubmenu('orders');
        
        $this->form = $form;
        $this->item = $item;

        JFactory::getApplication()->input->set('hidemainmenu', true);
        
        $this->addToolBar();
        $this->sidebar = JHtmlSidebar::render();
        parent::display($tpl);

        $this->setTitle();
    }

    /**
     * Sets the toolbar.
     */
    protected function addToolBar() {
        $canDo = EbookHelper::getActions();

        $isNew = $this->item->id == 0;
        if ($isNew) {
            JToolBarHelper::title(JText::_('COM_EBOOK_MANAGER_ORDER_NEW'));
            
            if ($canDo->get('core.create')) {
                JToolBarHelper::apply('order.apply');
                JToolBarHelper::save('order.save');
                JToolBarHelper::save2new('order.save2new');
            }
            
            JToolBarHelper::cancel('order.cancel');
        } else {
            JToolBarHelper::title(JText::_('COM_EBOOK_MANAGER_ORDER_EDIT'));
            
            if ($canDo->get('core.edit')) {
                JToolBarHelper::apply('order.apply');
                JToolBarHelper::save('order.save');

                if ($canDo->get('core.create')) {
                    JToolBarHelper::save2new('order.save2new');
                }
            }
            
            if ($canDo->get('core.create')) {
                JToolBarHelper::save2copy('order.save2copy');
            }
            
            JToolBarHelper::cancel('order.cancel', 'JTOOLBAR_CLOSE');
        }
    }

    /**
     * Sets the document title.
     */
    protected function setTitle() {
//         $document = JFactory::getDocument();
//         $isNew = $this->item->id == 0;
//         if ($isNew) {
//             $document->setTitle(JText::_('COM_EBOOK_ROUTE_CREATING'));
//         } else {
//             $document->setTitle(JText::_('COM_EBOOK_ROUTE_EDITING'));
//         }
    }
}
