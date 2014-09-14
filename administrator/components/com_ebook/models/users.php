<?php
/**
 * @copyright	Copyright (C) 2012 Daniel Calviño Sánchez
 * @license		GNU Affero General Public License version 3 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

/**
 * Model for the manager of the routes.
 * It uses Joomla infrastructure.
 */
class EbookModelUsers extends JModelList {

    /**
     * Creates a new SimpleCustomRouterModelRoutes.
     * The id, path and query are set as filter fields (so the list can be
     * ordered by those fields in the view).
     * 
     * @param array $config An optional associative array of configuration
     *        settings.
     */
    public function __construct($config = array()) {
        if (empty($config['filter_fields'])) {
            $config['filter_fields'] = array(
                'id',
                'name',
            	'email',
            	'all',
            	'activated',
            	'free',
            	'total',
            );
        }

        parent::__construct($config);
    }
    
    /**
     * Implementation of JModelList::getListQuery to get a JDatabaseQuery object
     * for retrieving the data set from a database.
     * The query selects all the fields from #__simplecustomrouter, ordered by
     * the column and direction set in the state by the parent model.
     * If a search filter was set, only the routes with a path or query
     * containing the text to look for (or, if the search starts by "ID:", the
     * route with the given ID) are returned.
     *
     * @return JDatabaseQuery A JDatabaseQuery object to retrieve the data set.
     */
    protected function getListQuery() {
        $db = JFactory::getDBO();
        $query = $db->getQuery(true);
        
        $sql = "SELECT a.id, a.email, a.username as name,
	
    				IF(b.devices IS NULL,0,b.devices) as _all, 
    				IF(b.total IS NULL,0,b.total) as total, 
    				IF(c.devices IS NULL,0,c.devices) as activated, 
    				IF(b.devices-c.devices IS NULL,0,b.devices-c.devices) as free 
        
        		FROM `#__users` as a 
        		left join 
        			(select user_id, sum(devices) as devices, sum(total)as total from `#__ebook_orders` where state=1) as b 
        			on a.id=b.user_id
        		left join 
        			(select user_id, count(UUID) as devices from `#__ebook_devices`) as c 
        			on a.id=c.user_id
        		";
//         	->select(array('a.id', 'a.user_id', 'a.description', 'a.state','a.devices','a.total', 'b.email', 'a.date', 'b.username as name'))
//         	->from($db->quoteName('#__users') . ' AS a')
//         	->leftJoin($db->quoteName('#__ebook_orders') . ' AS b ON b.user_id=a.id')
//         	->leftJoin($db->quoteName('#__ebook_devices') . ' AS c ON c.user_id=a.id')
//         	->
//         ;

        $search = $this->getState('filter.search');
        if (!empty($search)) {
        	
            if (stripos($search, 'id:') === 0) {
            	$sql = $sql.' where id = '.(int) substr($search, 3);
//                 $query->where('id = '.(int) substr($search, 3));
            } else {
                $search = $db->quote('%'.$db->escape($search, true).'%');
                $sql = $sql.' where '.'(a.email LIKE '.$search.' OR a.username LIKE '.$search.')';
//                 $query->where('(a.email LIKE '.$search.' OR a.username LIKE '.$search.')');

            }
        }

        $orderColumn = $this->state->get('list.ordering', 'id');
        $orderDirection = $this->state->get('list.direction', 'ASC');
        
        $sql = $sql.' order by '.$db->escape($orderColumn.' '.$orderDirection);
//         $query->order($db->escape($orderColumn.' '.$orderDirection));


        $query->setQuery($sql);
        
        return $query;
    }

    /**
     * Method to get a store id based on model configuration state.
     *
     * @param string $id A prefix for the store id.
     * @return string A store id.
     */
    protected function getStoreId($id = '') {
        $id .= ':'.$this->getState('filter.search');

        return parent::getStoreId($id);
    }

    /**
     * Method to auto-populate the model state.
     * The default sorting method used (if none is provided in the request) is
     * set to ascending ID.
     * 
     * @param string $ordering An optional ordering field.
     * @param string $direction An optional direction (asc|desc).
     */
    protected function populateState($ordering = null, $direction = null) {
        $search = $this->getUserStateFromRequest($this->context.'.filter.search', 'filter_search');
        $this->setState('filter.search', $search);

        parent::populateState('id', 'asc');
    }
}
