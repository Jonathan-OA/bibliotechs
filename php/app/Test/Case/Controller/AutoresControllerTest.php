<?php
class AutoresControllerTest extends ControllerTestCase{
	/*function testAdd(){
		$array = array(	'nome' 				=> 'Paulo Coelho',
						'data_nascimento'	=> '1950-09-12',
						'cidade' 			=> 'Rio de Janeiro',
						'pais' 				=> 'Brasil');
						
		$results = $this->testAction('autores/add/', array('data' => $array, 'method' => 'post'));
 		debug($results);
	}*/
	
	/*function testEdit(){
		$array = array(	'nome' 				=> 'Paulo Coelho',
						'data_nascimento'	=> '1950-09-12',
						'id'				=> '8',
						'cidade' 			=> 'Rio de Janeiro',
						'pais' 				=> 'Brasil');
						
		$results = $this->testAction('autores/edit/1', array('data' => $array, 'method' => 'post'));
 		debug($results);
	}*/
	
	function testDelete(){
		$array = array(	'id' => '1');
						
		$results = $this->testAction('autores/delete/1', array('data' => $array, 'method' => 'post'));
 		debug($results);
	}
}