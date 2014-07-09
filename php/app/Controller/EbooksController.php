<?php
/**
 * Created by JetBrains PhpStorm.
 * User: PauloFelipe
 * Date: 01/02/14
 * Time: 03:01
 * To change this template use File | Settings | File Templates.
 */
class EbooksController extends AppController{

    function index(){
        $this->set('ebooks', $this->Ebook->find('all', array('recursive'=>0)));
    }

    function add(){
        if ($this->request->is('post')) {
            $this->Ebook->create();
            $file = $this->request->data['Ebook']['file'];
            if(!$file['name'] == ''){
                $uploadFolder = WWW_ROOT . 'files';
                $filename = $file['name'];
                $extension = pathinfo($filename, PATHINFO_EXTENSION);
                $name = pathinfo($filename, PATHINFO_FILENAME);
                $size = $file['size'];
                $uploadPath =  $uploadFolder . DS . $filename;
                if( !file_exists($uploadFolder) ){
                    mkdir($uploadFolder, 0777);
                }
                move_uploaded_file($this->request->data['Ebook']['file']['tmp_name'], $uploadPath);
                $this->request->data['Ebook']['caminho'] = $name;
                $this->request->data['Ebook']['formato'] = $extension;
                $this->request->data['Ebook']['tamanho'] = $size;
                if ($this->Ebook->save($this->request->data)) {
                    $this->Session->setFlash('Ebook salvo');
                    $this->redirect(array('action' => 'index'));
                } else {
                    $this->Session->setFlash('Não foi possível salvar o Ebook');
                }
            }
            $this->Session->setFlash('Não foi possível salvar o Ebook');
        }
        $livros = $this->Ebook->Livro->find('list', array('fields' => array('id','titulo')));
        $this->set('livros', $livros);
    }

    public function edit($id = null) {
        $this->Ebook->id = $id;
        $livros = $this->Ebook->Livro->find('list', array('fields' => array('id','titulo')));
        $this->set('livros', $livros);
        if (!$this->Ebook->exists()) {
            throw new NotFoundException(__('Ebook Inválida'));
        }
        if ($this->request->is('post') || $this->request->is('put')) {
            $file = $this->request->data['Ebook']['file'];
            if(!$file['name'] == ''){
                $uploadFolder = WWW_ROOT . 'files';
                $filename = $file['name'];
                $extension = pathinfo($filename, PATHINFO_EXTENSION);
                $name = pathinfo($filename, PATHINFO_FILENAME);
                $size = $file['size'];
                $uploadPath =  $uploadFolder . DS . $filename;
                if( !file_exists($uploadFolder) ){
                    mkdir($uploadFolder, 0777);
                }
                move_uploaded_file($this->request->data['Ebook']['file']['tmp_name'], $uploadPath);
                $this->request->data['Ebook']['caminho'] = $name;
                $this->request->data['Ebook']['formato'] = $extension;
                $this->request->data['Ebook']['tamanho'] = $size;
                if ($this->Ebook->save($this->request->data)) {
                    $this->Session->setFlash('Ebook salvo');
                    $this->redirect(array('action' => 'index'));
                } else {
                    $this->Session->setFlash('Não foi possível salvar o Ebook');
                }
            }
        }
        else{
            $this->request->data = $this->Ebook->findById($id);
        }
    }

    public function delete($id = null) {
        if (!$this->request->is('post')) {
            throw new MethodNotAllowedException();
        }
        $this->Ebook->id = $id;
        if (!$this->Ebook->exists()) {
            throw new NotFoundException(__('Ebook inválido'));
        }
        if ($this->Ebook->delete()) {
            $this->Session->setFlash(__('Ebook excluido'));
            $this->redirect(array('action' => 'index'));
        }
        $this->Session->setFlash(__('O ebook não pode ser excluido'));
        $this->redirect(array('action' => 'index'));
    }

    public function make_available($id = null){
        $this->Ebook->id = $id;
        if($this->Ebook->saveField('disponivel', 1)){
            $this->Session->setFlash(__('Ebook disponível'));
            $this->redirect(array('action' => 'index'));
        }
    }

    public function make_unavailable($id = null){
        $this->Ebook->id = $id;
        if($this->Ebook->saveField('disponivel', 0)){
            $this->Session->setFlash(__('Ebook não disponível'));
            $this->redirect(array('action' => 'index'));
        }
    }


}