<?php
defined ( '_JEXEC' ) or die ();


class CryptHelper {

	private $iv = 'fedcba9876543210'; // Same as in JAVA
	private $key = '0123456789abcdef'; // Same as in JAVA
	private $prefix = "TnhTI5Az983Akms~AyHtHctE$|F546DLAUuN?RpXm4fLutW*G61Bj#fFw#DDDAnn";
	function __construct() {
	}
	function encrypt($str) {
		
// 		dump($this->prefix.$str);
		// $key = $this->hex2bin($key);
		$iv = $this->iv;
		
		$td = mcrypt_module_open ( 'rijndael-128', '', 'cbc', $iv );
		
		mcrypt_generic_init ( $td, $this->key, $iv );
		$encrypted = mcrypt_generic ( $td, $this->prefix.$str );
		
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
		
		return rtrim(utf8_encode ( trim ( $decrypted ) ), "\0");
	}

}