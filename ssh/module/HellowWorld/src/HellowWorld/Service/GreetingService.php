<?php
namespace HellowWorld\Service;

use Zend\EventManager\EventManagerInterface;
class GreetingService
{
	private $eventManager;
	
	public function getGreeting() {
		//return date("H");
		$this->eventManager->addIdentifiers('GreetingService');
		$this->eventManager->trigger('getGreeting');
		
		if (date("H")<=11) {
			return "Good morning, world!";
		}elseif (date("H")>11&&date("H")<17)
			return "Hello, world!";
		else 
			return "Good evening, world!";
	}
	
	public function getEventManager()
	{
		return $this->eventManager; 
	}
	
	public function setEventManager(EventManagerInterface $em)
	{
		$this->eventManager = $em;
	}
}