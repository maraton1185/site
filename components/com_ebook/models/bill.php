<?php
// No direct access to this file
defined ( '_JEXEC' ) or die ( 'Restricted access' );

// import Joomla modelitem library
jimport ( 'joomla.application.component.modelitem' );

// require_once JPATH_COMPONENT_ADMINISTRATOR.'/helpers/sql.php';
class EbookModelBill extends JModelLegacy {
	
	public function successUrl() {
		// as a part of SuccessURL script
		$app = JFactory::getApplication();
		$componentParams = $app->getParams('com_ebook');
		$pay_pass1 = $componentParams->get('pay_pass1');
		
		// your registration data
		$mrh_pass1 = $pay_pass1;  // merchant pass1 here
		
		// HTTP parameters:
		$out_summ = $_REQUEST["OutSum"];
		$inv_id = $_REQUEST["InvId"];
		$crc = $_REQUEST["SignatureValue"];
		
		$crc = strtoupper($crc);  // force uppercase
		
		// build own CRC
		$my_crc = strtoupper(md5("$out_summ:$inv_id:$mrh_pass1"));
		
		if (strtoupper($my_crc) != strtoupper($crc))
		{
			echo "bad sign\n";
			return false;
		}
		
		// you can check here, that resultURL was called
		// (for better security)
		
		// OK, payment proceeds
// 		echo "Thank you for using our service\n";
		
		$url  = 'index.php?option=com_ebook&view=cabinet&layout=bill_success';
		return $url; 
	}
	
	public function failUrl() {
	
		$url  = 'index.php?option=com_ebook&view=cabinet&layout=bill_fail';		
		return $url; 
	}
	
	public function resultUrl() {
		
		// as a part of ResultURL script
		$app = JFactory::getApplication();
		$componentParams = $app->getParams('com_ebook');
		$pay_pass2 = $componentParams->get('pay_pass2');
		
		// your registration data
		$mrh_pass2 = $pay_pass2; // merchant pass2 here
		                            
		// HTTP parameters:
		$out_summ = $_REQUEST ["OutSum"];
		$inv_id = $_REQUEST ["InvId"];
		$crc = $_REQUEST ["SignatureValue"];
		
		// HTTP parameters: $out_summ, $inv_id, $crc
		$crc = strtoupper ( $crc ); // force uppercase
		                         
		// build own CRC
		$my_crc = strtoupper ( md5 ( "$out_summ:$inv_id:$mrh_pass2" ) );
		
		if (strtoupper ( $my_crc ) != strtoupper ( $crc )) {
			echo "bad sign\n";
			exit ();
		}
		
		// print OK signature
		echo "OK$inv_id\n";

		// perform some action (change order state to paid)
		$order = new stdClass ();
		$order->id = $inv_id;
		$order->state = 1;

		$result = $db->updateObject ( '#__ebook_orders', $order, 'id');
	}
	
	public function getUrl($count) {
		
		$order = $this->_addOrder($count);
		
		return $this->_payurl($order);
	}
	
	private function _payurl($order)
	{
		$app = JFactory::getApplication();
		$componentParams = $app->getParams('com_ebook');
		$pay_url = $componentParams->get('pay_url');
		$pay_login = $componentParams->get('pay_login');
		$pay_pass1 = $componentParams->get('pay_pass1');
		$pay_pass2 = $componentParams->get('pay_pass2');
		
		// your registration data
		$mrh_login = $pay_login;      // your login here
		$mrh_pass1 = $pay_pass1;   // merchant pass1 here
		
		// order properties
		$inv_id    = $order->id;        // shop's invoice number
		// (unique for shop's lifetime)
		$inv_desc  = $order->description;   // invoice desc
		$out_summ  = $order->total;   // invoice summ
		
		// build CRC value
		$crc  = md5("$mrh_login:$out_summ:$inv_id:$mrh_pass1");
		
		// build URL
		$url = $pay_url."?MrchLogin=$mrh_login&".
				"OutSum=$out_summ&InvId=$inv_id&Desc=$inv_desc&SignatureValue=$crc";
		
		return $url; 
	}
	
	private function _addOrder($count) {
		
		$app = JFactory::getApplication();
		$componentParams = $app->getParams('com_ebook');
		$count1 = $componentParams->get('order1count');
		$total1 = $componentParams->get('order1total');
		$count2 = $componentParams->get('order2count');
		$total2 = $componentParams->get('order2total');
		
		$db = $this->getDbo ();
		
		$user = JFactory::getUser ();
		
		if ($user->get ( 'guest' ) == 1) {
			JError::raiseError ( 500, 'must login' );
			return false;
		}
		// Create and populate an object.
		$order = new stdClass ();
		$order->user_id = $user->get ( 'id' );
		$order->date = JFactory::getDate ()->toSql ();
		$order->state = 0;
		$order->devices = ( int ) $count;
		switch (( int ) $count) {
			case $count1 :
				$order->total = $total1;
				break;
			case $count2 :
				$order->total = $total2;
				break;
			
			default :
				JError::raiseError ( 500, 'count error' );
				return false;
		}
		
		$result = $db->insertObject ( '#__ebook_orders', $order, 'id');		
		
		if (!$result) {
			JError::raiseError ( 500, 'order not created' );
			return false;
		}
		
		$order->description = JText::sprintf(
				'COM_EBOOK_ORDER_DESCRIPTION',
				$order->id,
				$order->devices,				
				$user->get ( 'email' )
		);
		
		$result = $db->updateObject ( '#__ebook_orders', $order, 'id');
		
		if (!$result) {
			JError::raiseError ( 500, 'order not updated' );
			return false;
		}
		
		return $order;
	}
} 