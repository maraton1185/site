<?php
// No direct access to this file
defined('_JEXEC') or die;
 
/**
 * General Controller of HelloWorld component
 */
class LicenseController extends JControllerLegacy
{
	public function display($cachable = false, $urlparams = false)
	{
		require_once JPATH_COMPONENT.'/helpers/license.php';

		$view   = $this->input->get('view', 'license');
		$layout = $this->input->get('layout', 'default');
		$id     = $this->input->getInt('id');

		//dump('asdf');
		// Load the submenu.
		LicenseHelper::addSubmenu($this->input->get('view', 'licenses'));
		parent::display();
	}
}