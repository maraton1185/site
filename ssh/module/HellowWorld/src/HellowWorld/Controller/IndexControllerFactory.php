<?php
namespace HellowWorld\Controller;

use Zend\ServiceManager\FactoryInterface;
use Zend\ServiceManager\ServiceLocatorInterface;

class IndexControllerFactory implements FactoryInterface{
	
	public function createService(ServiceLocatorInterface $serviceLocator)
	{
		$ctx = new IndexController();
		
		$ctx ->setGreetingService(
				
				$serviceLocator->getServiceLocator()->get('greetingService')
				
				);
		
		return $ctx;
	}		
	
}