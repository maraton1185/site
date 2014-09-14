<?php
defined ( '_JEXEC' ) or die ();


class CryptHelper {

	private $iv = 'sJ|MLVVcID3Qc6|~'; // Same as in JAVA
	private $key = 'sJ|MLVVcID3Qc6|~'; // Same as in JAVA
	private $prefix = "TnhTI5Az983Akms~AyHtHctE$|F546DLAUuN?RpXm4fLutW*G61Bj#fFw#DDDAnn";
	function __construct() {
	}
	function encrypt($str) {
		
		$size = mcrypt_get_block_size('rijndael-128', 'cbc');
		$str = $this->_pkcs5_pad($str, $size);

		$iv = $this->iv;
		
		$td = mcrypt_module_open ( 'rijndael-128', '', 'cbc', $iv );
		
		mcrypt_generic_init ( $td, $this->key, $iv );
		$encrypted = mcrypt_generic ( $td, $str );
		
		mcrypt_generic_deinit ( $td );
		mcrypt_module_close ( $td );
		
		return rtrim(base64_encode( $encrypted ), "\0");
	}
	function decrypt($code) {
		// $key = $this->hex2bin($key);
		
		$code = base64_decode ( $code );
		$iv = $this->iv;
		
		$td = mcrypt_module_open ( 'rijndael-128', '', 'cbc', $iv );
		
		mcrypt_generic_init ( $td, $this->key, $iv );
		$decrypted = mdecrypt_generic ( $td, $code );
		
		mcrypt_generic_deinit ( $td );
		mcrypt_module_close ( $td );
		
		return rtrim($this->_pkcs5_unpad ( $decrypted ) , "\0");
		
	}
	
	function getString($data)
	{
		$msg = $this->prefix;
		foreach($data as $key => $value)
		{
			$msg = $msg.$key."=".$value."&";
		}
		return $msg;
	}
	
	function getData ($msg)
	{
		$result = new stdClass();
		$msg = str_replace($this->prefix, "", $msg);
		$data = explode ("&", $msg);
		foreach ($data as $value){
			$data = explode ("=", $value);
			$result->$data[0]=$data[1];
		}
			
		return $result;
	}
	
	function _pkcs5_pad ($text, $blocksize)
	{
		$pad = $blocksize - (strlen($text) % $blocksize);
		return $text . str_repeat(chr($pad), $pad);
	}
	
	function _pkcs5_unpad($text)
	{
		$pad = ord($text{strlen($text)-1});
		if ($pad > strlen($text)) return false;
		if (strspn($text, chr($pad), strlen($text) - $pad) != $pad) return false;
		return substr($text, 0, -1 * $pad);
	}

}