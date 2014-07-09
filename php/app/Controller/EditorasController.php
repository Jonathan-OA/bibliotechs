<?php
/**
 * Created by JetBrains PhpStorm.
 * User: PauloFelipe
 * Date: 01/02/14
 * Time: 03:01
 * To change this template use File | Settings | File Templates.
 */
class EditorasController extends AppController{
    function index(){
        $this->set('editoras', $this->Editora->find('all'));
    }

    function add(){
        if ($this->request->is('post')) {
            $this->Editora->create();
            if ($this->Editora->save($this->request->data)) {
                $this->Session->setFlash(__('Editora adicionada com sucesso'));
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('A editora não pode ser adicionda, tente novamente.'));
            }
        }
    }
    public function edit($id = null) {
        $this->Editora->id = $id;
        if (!$this->Editora->exists()) {
            throw new NotFoundException(__('Editora Inválida'));
        }
        if ($this->request->is('post') || $this->request->is('put')) {
            if ($this->Editora->save($this->request->data)) {
                $this->Session->setFlash(__('Editora salva com sucesso'));
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('A editora não pode ser salva, tente novamente.'));
                $this->redirect(array('action' => 'index'));
            }
        }
        else{
            $this->request->data = $this->Editora->findById($id);
        }
    }

    public function delete($id = null) {
        if (!$this->request->is('post')) {
            throw new MethodNotAllowedException();
        }
        $this->Editora->id = $id;
        if (!$this->Editora->exists()) {
            throw new NotFoundException(__('Editora inválido'));
            $this->redirect(array('action' => 'index'));
        }
        if ($this->Editora->delete()) {
            $this->Session->setFlash(__('Editora excluido'));
            $this->redirect(array('action' => 'index'));
        }
        $this->Session->setFlash(__('O editora não pode ser excluido'));
        $this->redirect(array('action' => 'index'));
    }

}