<?php
use PHPUnit_Framework_TestCase as PHPUnit;

/**
 * Created by JetBrains PhpStorm.
 * Conta: PauloFelipe
 * Date: 30/01/14
 * Time: 18:52
 * To change this template use File | Settings | File Templates.
 */
// app/Controller/ContasController.php
class ContasController extends PHPUnit {

	function setUp(){
		
	}
	
	function testLogin(){
		$this->assertEquals(true,$this->login(),'Login efetuado');
	}
	
	function tearDown(){
		
	}

    public function beforeFilter() {
        parent::beforeFilter();
        $this->Auth->allow('add', 'logout', 'login');
    }

    public function index() {
        $this->Conta->recursive = 0;
        $this->set('contas', $this->paginate());
    }

    public function view($id = null) {
        $this->Conta->id = $id;
        if (!$this->Conta->exists()) {
            throw new NotFoundException(__('Conta inválida'));
        }
        $this->set('Conta', $this->Conta->read(null, $id));
    }

    public function add() {
        if ($this->request->is('post')) {
            $this->Conta->create();
            if ($this->Conta->saveAll($this->request->data)) {
                $this->Session->setFlash(__('Parabéns! Agora você faz parte do sistema Bibliotechs!'));
                $this->redirect(array('action' => 'login'));
            } else {
                $this->Session->setFlash(__('A conta não pode ser salva, tente novamente'));
            }
        }
    }

    public function edit($id = null) {
        $this->Conta->id = $id;
        if (!$this->Conta->exists()) {
            throw new NotFoundException(__('Conta inválida'));
        }
        if ($this->request->is('post') || $this->request->is('put')) {
            if ($this->Conta->save($this->request->data)) {
                $this->Session->setFlash(__('A conta foi salva'));
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('A conta não pode ser salva, tente novamente.'));
            }
        } else {
            $this->request->data = $this->Conta->read(null, $id);
            unset($this->request->data['Conta']['password']);
        }
    }

    public function delete($id = null) {
        if (!$this->request->is('post')) {
            throw new MethodNotAllowedException();
        }
        $this->Conta->id = $id;
        if (!$this->Conta->exists()) {
            throw new NotFoundException(__('Conta inválida'));
        }
        if ($this->Conta->delete()) {
            $this->Session->setFlash(__('Conta removida'));
            $this->redirect(array('action' => 'index'));
        }
        $this->Session->setFlash(__('A conta não vou removida'));
        $this->redirect(array('action' => 'index'));
    }

    public function login() {
			$array = array('username' => 'Paulo', 'password' => 'senha');
            if ($this->Auth->login($array)) {
                return true;
            } else {
				return false;
            }
    }

    public function logout() {
        $this->redirect($this->Auth->logout());
    }
}