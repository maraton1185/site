<?php
return array(
		
		
		'view_manager' => array(
				'template_path_stack' => array(
						__DIR__ . '/../view',
				),
		),
		
		'router'=>array(
				'routes'=>array(
						'sayhello'=>array(
								'type'=>'Zend\Mvc\Router\Http\Literal',
								'options'=>array(
										'route'=>'/sayhello',
										'defaults'=>array(
												'controller'=>'HellowWorld\Controller\Index',
												'action'=>'index'
								)
						)
				)
			)
		),
		
		'controllers' => array(
				//'invokables' => array(
				//		'HellowWorld\Controller\Index' => 'HellowWorld\Controller\IndexController'
				//),
				//'factories'=>array(
				//		'HellowWorld\Controller\Index'=>'HellowWorld\Controller\IndexControllerFactory'
				//),
				'factories'=>array(
					'HellowWorld\Controller\Index'=>function ($serviceLocator)
					{
						$ctx = new HellowWorld\Controller\IndexController();
		
						$ctx ->setGreetingService(
				
							$serviceLocator->getServiceLocator()->get('greetingService')
				
							);
		
						return $ctx;
					}	
				),				
				
		),
		'service_manager' => array(
				'invokables' => array(
						'greetingService' => 'HellowWorld\Service\GreetingService'
				),
		),
);