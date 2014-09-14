<?php
/**
 * @copyright	Copyright (C) 2012 Daniel Calviño Sánchez
 * @license		GNU Affero General Public License version 3 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

/**
 * Table for the routes.
 */
class EbookTableDevice extends JTable {

    /**
     * Creates a new SimpleCustomRouterTableRoute.
     *
     * @param object JDatabase connector object
     */
    function __construct(&$db) {
        parent::__construct('#__ebook_devices', 'id', $db);
    }
}
