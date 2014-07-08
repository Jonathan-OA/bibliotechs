<?php
App::uses('Controller', 'Controller');
use PHPUnit_Framework_TestCase as PHPUnit;

class AppControllerTest extends PHPUnit{

	protected $loginResult;
	public function setUp(){
	}
	
	public function testLogin(){
		$this->loginResult = $this->_login();
	}
	
	public function _login(){
        Security::setHash('sha256');
        $this->Auth->allow('index', 'view');
        if ($this->Auth->User()){
            $this->layout = 'bibliotechs';
        } else{
            $this->layout = 'default';

        }
    }
	
	public function tearDown(){
	
	}
	
	
}
?>