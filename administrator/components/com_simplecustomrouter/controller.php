<?php
/**
 * @copyright	Copyright (C) 2012 Daniel Calviño Sánchez
 * @copyright	Copyright (C) 2013 Daniel Calviño Sánchez
 * @copyright	Copyright (C) 2014 Daniel Calviño Sánchez
 * @license		GNU Affero General Public License version 3 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

/**
 * Main controller for display task and other tasks that just redirect to a
 * view.
 */
class SimpleCustomRouterController extends JControllerLegacy {

    /**
     * Displays the routes manager.
     */
    public function display($cachable = false, $urlparams = array()) {
        //Set default view if not set
        JFactory::getApplication()->input->set('view', JFactory::getApplication()->input->get('view', 'Routes'));

        parent::display($cachable, $urlparams);
    }

    /**
     * Redirects to the routes manager.
     * Used when closing the test view from the toolbar.
     */
    public function routes() {
        $this->setRedirect(JRoute::_('index.php?option=com_simplecustomrouter&view=routes', false));
    }

    /**
     * Redirects to the routes test.
     * Used when showing the test view from the toolbar.
     */
    public function test() {
        $this->setRedirect(JRoute::_('index.php?option=com_simplecustomrouter&view=test', false));
    }
}
