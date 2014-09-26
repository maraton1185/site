<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_ebook
 *
 * @copyright   Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

/**
 * @package     Joomla.Administrator
 * @subpackage  com_ebook
 * @since       1.6
 */
class SqlHelper
{

	public static function getQuery()
	{
		return
		'		IF(b.devices IS NULL,0,b.devices) as _all, 
    			IF(b.total IS NULL,0,b.total) as total, 
    			IF(c.devices IS NULL,0,c.devices) as activated, 
    			IF(b.devices-c.devices IS NULL,b.devices,b.devices-c.devices) as free 
        
        		FROM `#__users` as a 
        		left join 
        			(select user_id, sum(devices) as devices, sum(total)as total from `#__ebook_orders` where state=1 group by user_id) as b 
        			on a.id=b.user_id
        		left join 
        			(select user_id, count(UUID) as devices from `#__ebook_devices` group by user_id) as c 
        			on a.id=c.user_id'
		;

	}
			
}
