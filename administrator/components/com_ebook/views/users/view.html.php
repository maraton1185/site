<?php
/**
 * @copyright	Copyright (C) 2012 Daniel Calviño Sánchez
 * @license		GNU Affero General Public License version 3 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

/**
 * View for the manager of the routes.
 * It uses Joomla infrastructure.
 */
class EbookViewUsers extends JViewLegacy {

    /**
     * Displays the view.
     */
    function display($tpl = null) {
    	
    	require_once JPATH_COMPONENT.'/helpers/ebook.php';
    	
        $items = $this->get('Items');
        $pagination = $this->get('Pagination');
        $state = $this->get('State');
        
        if (count($errors = $this->get('Errors'))) {
            JError::raiseError(500, implode('<br />', $errors));
            return false;
        }
        
        EbookHelper::addSubmenu('users');
        
        $this->items = $items;
        $this->pagination = $pagination;

        $this->filterSearch = $this->escape($state->get('filter.search'));
        $this->listOrder = $this->escape($state->get('list.ordering'));
        $this->listDirection = $this->escape($state->get('list.direction'));
        
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
        
        JToolBarHelper::title(JText::_('COM_EBOOK_USERS'), 'routes');                
        
        if ($canDo->get('core.admin')) {
            JToolBarHelper::divider();
            JToolBarHelper::preferences('com_ebook');
        }
    }

    /**
     * Sets the document title.
     */
    protected function setTitle() {
//         $document = JFactory::getDocument();
//         $document->setTitle(JText::_('COM_EBOOK_ADMINISTRATION'));
    }

    /**
     * Returns an array with the fields that the table can be sorted by.
     *
     * @return array An array with the names of the fields indexed by their key.
     */
    protected function getSortFields() {
        return array(
            'id' => JText::_('COM_EBOOK_HEADING_ID'),
            'name' => JText::_('COM_EBOOK_HEADING_USER'),
        	'email' => JText::_('COM_EBOOK_HEADING_EMAIL'),
        	'all' => JText::_('COM_EBOOK_HEADING_ALL'),
        	'activated' => JText::_('COM_EBOOK_HEADING_ACTIVATED'),
        	'free' => JText::_('COM_EBOOK_HEADING_FREE'),
        	'total' => JText::_('COM_EBOOK_HEADING_TOTAL'),
        	
        );
    }
}
