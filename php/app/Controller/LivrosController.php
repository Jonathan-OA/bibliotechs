<?php
/**
 * Created by JetBrains PhpStorm.
 * User: PauloFelipe
 * Date: 01/02/14
 * Time: 03:01
 * To change this template use File | Settings | File Templates.
 */
class LivrosController extends AppController{

    function index(){
        $this->set('livros', $this->Livro->find('all', array('recursive'=>2)));
    }

    function add(){
        $autores = $this->Livro->Autor->find('list', array('fields' => array('id','nome')));
        $this->set('autores', $autores);
        $editoras = $this->Livro->Editora->find('list', array('fields' => array('id','nome')));
        $this->set('editoras', $editoras);
        if ($this->request->is('post')) {
            $this->Livro->create();
            if ($this->Livro->saveAll($this->request->data)) {
                $this->Session->setFlash(__('Livro adicionado com sucesso'));
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('O livro não pode ser adicionado, tente novamente.'));
            }
        }
    }
    public function edit($id = null) {
        $this->Livro->id = $id;
        if (!$this->Livro->exists()) {
            throw new NotFoundException(__('Livro Inválida'));
        }
        if ($this->request->is('post') || $this->request->is('put')) {
            if ($this->Livro->save($this->request->data)) {
                $this->Session->setFlash(__('Livro salva com sucesso'));
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('A livro não pode ser salva, tente novamente.'));
                $this->redirect(array('action' => 'index'));
            }
        }
        else{
            $this->request->data = $this->Livro->findById($id);
            $autores = $this->Livro->Autor->find('list', array('fields' => array('id','nome')));
            $this->set('autores', $autores);
            $editoras = $this->Livro->Editora->find('list', array('fields' => array('id','nome')));
            $this->set('editoras', $editoras);

        }
    }

    public function delete($id = null) {
        if (!$this->request->is('post')) {
            throw new MethodNotAllowedException();
        }
        $this->Livro->id = $id;
        if (!$this->Livro->exists()) {
            throw new NotFoundException(__('Livro inválido'));
            $this->redirect(array('action' => 'index'));
        }
        if ($this->Livro->delete()) {
            $this->Session->setFlash(__('Livro excluido'));
            $this->redirect(array('action' => 'index'));
        }
        $this->Session->setFlash(__('O livro não pode ser excluido'));
        $this->redirect(array('action' => 'index'));
    }


}