<?php
namespace HellowWorld\Service;

use Zend\ServiceManager\FactoryInterface;
use Zend\ServiceManager\ServiceLocatorInterface;

class GreetingServiceFactory implements FactoryInterface
{
	public function createService(ServiceLocatorInterface $serviceLocator)
	{
		
		/*
		$gs = new GreetingService(); 
		
		$gs->setEventManager($serviceLocator->get('eventManager'));
		
		/*
		$loggingService = $serviceLocator->get('loggingService');
		
		$gs->getEventManager()->attach('getGreeting', array($loggingService,'OnGetGreeting'));
		
		
		$gs->getEventManager()->attach('getGreeting', 
				function ($e) use($serviceLocator) {
					$serviceLocator->get('loggingService')->OnGetGreeting($e);
				}
			);
		*/
		
		$serviceLocator
			->get('sharedEventManager')
			->attach(
					'GreetingService',
					'getGreeting',
					function ($e) use($serviceLocator) {
						$serviceLocator
							->get('loggingService')
							->OnGetGreeting($e);
					}
		);		
		
		$gs = new GreetingService();
		$gs->setEventManager($serviceLocator->get('eventManager'));
		return $gs; 
	}	
}



