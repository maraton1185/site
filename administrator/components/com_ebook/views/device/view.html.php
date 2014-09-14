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
class EbookViewDevice extends JViewLegacy {

    /**
     * Displays the view.
     */
    public function display($tpl = null) {
        $form = $this->get('Form');
        $item = $this->get('Item');

        if (count($errors = $this->get('Errors'))) {
            JError::raiseError(500, implode('<br />', $errors));
            return false;
        }

        EbookHelper::addSubmenu('devices');
        
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
            JToolBarHelper::title(JText::_('COM_EBOOK_MANAGER_DEVICE_NEW'));
            
            if ($canDo->get('core.create')) {
                JToolBarHelper::apply('device.apply');
                JToolBarHelper::save('device.save');
                JToolBarHelper::save2new('device.save2new');
            }
            
            JToolBarHelper::cancel('device.cancel');
        } else {
            JToolBarHelper::title(JText::_('COM_EBOOK_MANAGER_DEVICE_EDIT'));
            
            if ($canDo->get('core.edit')) {
                JToolBarHelper::apply('device.apply');
                JToolBarHelper::save('device.save');

                if ($canDo->get('core.create')) {
                    JToolBarHelper::save2new('device.save2new');
                }
            }
            
            if ($canDo->get('core.create')) {
                JToolBarHelper::save2copy('device.save2copy');
            }
            
            JToolBarHelper::cancel('device.cancel', 'JTOOLBAR_CLOSE');
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
