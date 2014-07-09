<?php
App::uses('AppController', 'Controller');
class AutoresController extends AppController{
    public  $uses = array('Autor');

    function index(){
        $this->set('autores', $this->Autor->find('all'));
    }

    function add(){
        if ($this->request->is('post')) {
            $this->Autor->create();
            if ($this->Autor->save($this->request->data)) {
                $this->Session->setFlash(__('Autor adicionado com sucesso'));
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('O Autor não pode ser adicionado, tente novamente.'));
            }
        }
    }

    public function edit($id = null) {
        $this->Autor->id = $id;
        if (!$this->Autor->exists()) {
            throw new NotFoundException(__('Autor Inválido'));

        }
        if ($this->request->is('post') || $this->request->is('put')) {
            if ($this->Autor->save($this->request->data)) {
                $this->Session->setFlash(__('Autor salvo com sucesso'));
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('O autor não pode ser salvo, tente novamente.'));
                $this->redirect(array('action' => 'index'));
            }
        }
    }

    public function delete($id = null) {
        if (!$this->request->is('post')) {
            throw new MethodNotAllowedException();
        }
        $this->Autor->id = $id;
        if (!$this->Autor->exists()) {
            throw new NotFoundException(__('Autor inválido'));
            $this->redirect(array('action' => 'index'));
        }
        if ($this->Autor->delete()) {
            $this->Session->setFlash(__('Autor excluido'));
            $this->redirect(array('action' => 'index'));
        }
        $this->Session->setFlash(__('O autor não pode ser excluido'));
        $this->redirect(array('action' => 'index'));
    }

}