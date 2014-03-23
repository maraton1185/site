<?php

namespace HellowWorld\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;

class IndexController extends AbstractActionController
{

	private $greetingService;
	
    public function indexAction()
    {
		//$srv = $this->getServiceLocator()->get('greetingService');
    	
    	//return new ViewModel(array('greeting'=>$srv->getGreeting()));
    	
    	return new ViewModel(array('greeting'=>$this->greetingService->getGreeting()));
    }

    public function setGreetingService($service) {
    	
    	$this->greetingService = $service;
    	
    }

}

