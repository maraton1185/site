<?php
namespace HellowWorld\Service;

class GreetingService
{
	public function getGreeting() {
		//return date("H");
		
		if (date("H")<=11) {
			return "Good morning, world!";
		}elseif (date("H")>11&&date("H")<17)
			return "Hello, world!";
		else 
			return "Good evening, world!";
	}
}