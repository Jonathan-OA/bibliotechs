<?php
/**
 * Created by JetBrains PhpStorm.
 * User: PauloFelipe
 * Date: 01/02/14
 * Time: 03:01
 * To change this template use File | Settings | File Templates.
 */
class PacotesController extends AppController{
    public $uses = array('ItensPacote', 'Pacote', 'Ebook');
    function index(){
        $this->set('itens', $this->ItensPacote->find('all', array('recursive'=>3)));
    }

    function add(){
        if ($this->request->is('post')) {
            $this->request->data['Pacote']['tipo'] = 0;
            $this->Pacote->create();
            $i = 1;
            while(isset($this->request->data['ItensPacote'][$i])){
                if($this->request->data['ItensPacote'][$i]['ebook_id'] == 0)
                    unset($this->request->data['ItensPacote'][$i]);
                $i++;
            }
            if ($this->Pacote->saveAll($this->request->data)) {
                $this->Session->setFlash(__('Pacote adicionado com sucesso'));
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('O pacote não pode ser adicionado, tente novamente.'));
            }
        }
        $ebooks = $this->Ebook->find('all');
        $ebooks_list = array(0 => '');
        foreach($ebooks as $ebook):
            $ebooks_list[$ebook['Ebook']['id']] = $ebook['Livro']['titulo'];
        endforeach;
        $this->set('ebooks', $ebooks_list);
    }

    public function delete($id = null) {
        if (!$this->request->is('post')) {
            throw new MethodNotAllowedException();
        }
        $this->Pacote->id = $id;
        if (!$this->Pacote->exists()) {
            throw new NotFoundException(__('Pacote inválido'));
        }
        if ($this->Pacote->delete()) {
            $this->Session->setFlash(__('Pacote excluido'));
            $this->redirect(array('action' => 'index'));
        }
        $this->Session->setFlash(__('O pacote não pode ser excluido'));
        $this->redirect(array('action' => 'index'));
    }

    public function make_available($id = null){
        $this->Pacote->id = $id;
        if($this->Pacote->saveField('tipo', 1)){
            $this->Session->setFlash(__('Pacote disponível'));
            $this->redirect(array('action' => 'index'));
        }
    }

    public function make_unavailable($id = null){
        $this->Pacote->id = $id;
        if($this->Pacote->saveField('tipo', 0)){
            $this->Session->setFlash(__('Pacote não disponível'));
            $this->redirect(array('action' => 'index'));
        }
    }

}