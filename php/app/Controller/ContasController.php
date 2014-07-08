<?php
// app/Controller/ContasController.php
class ContasController extends AppController {

    public function beforeFilter() {
        parent::beforeFilter();
        $this->Auth->allow('add', 'logout');
    }

    public function index() {
        $this->Conta->recursive = 1 ;
        $this->set('usuarios', $this->Conta->find('all'));
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
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('A conta não pode ser salva, tente novamente'));
            }
        }
    }

    public function edit($id = null) {
        $this->Conta->recursive = 1;
        if ($this->request->is('post') || $this->request->is('put')) {
            if ($this->Conta->saveAll($this->request->data)) {
                $this->Session->setFlash(__('A conta foi salva'));
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('A conta não pode ser salva, tente novamente.'));
            }
        } else {
            $this->request->data = $this->Conta->find('first', array('conditions' => array('username' => $id)));
        }
    }

    public function delete($id = null) {
        if (!$this->request->is('post')) {
            throw new MethodNotAllowedException();
        }
        if ($this->Conta->deleteAll(array('Conta.username' => $id))) {
            $this->Session->setFlash(__('Conta removida'));
            $this->redirect(array('action' => 'index'));
        }
        $this->Session->setFlash(__('A conta não foi removida'));
        $this->redirect(array('action' => 'index'));
    }

    public function login() {
        if($this->request->is('post')){
            if ($this->Auth->login($this->request->data['Conta'])) {
                $this->redirect($this->Auth->redirectUrl('/livros/index'));
            } else {
                $this->Session->setFlash(__('Usuário ou senha inválidos, tente novamente.'));
            }
        }
    }

    public function logout() {
        $this->redirect($this->Auth->logout());
    }
}