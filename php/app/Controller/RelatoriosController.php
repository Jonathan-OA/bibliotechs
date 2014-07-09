<?php
// app/Controller/RelatoriosController.php
class RelatoriosController extends AppController {

    public function index() {
        
    }

    public function estado(){
        $this->loadModel('Conta');
         $this->Conta->recursive = 1;
        $this->set('usuarios', $this->Conta->find('all', array('fields' => array('Usuario.estado','COUNT(nome) AS qtd' 
        ),'group' => array('Usuario.estado'))));

        //$this->set('usuarios', $this->Conta->find('all', array('fields' => array('COUNT(nome) AS qtd', 'Usuario.nome', 'Usuario.cidade', 'Usuario.estado',  'Usuario.sexo'
        //),'group' => array('Usuario.estado'))));

        
    }

    public function cidade(){
        $this->loadModel('Conta');
         $this->Conta->recursive = 1;
        $this->set('usuarios', $this->Conta->find('all', array('fields' => array('Usuario.cidade','COUNT(nome) AS qtd' 
        ),'group' => array('Usuario.cidade'), 'limit' => '10')));

        //$this->set('usuarios', $this->Conta->find('all', array('fields' => array('COUNT(nome) AS qtd', 'Usuario.nome', 'Usuario.cidade', 'Usuario.estado',  'Usuario.sexo'
        //),'group' => array('Usuario.estado'))));

        
    }

    public function livros(){
         $this->loadModel('ItensPacote');
         $this->ItensPacote->recursive = 2;
        $this->set('livros', $this->ItensPacote->find('all', array('fields' => array('ebook_id','COUNT(ItensPacote.id) AS qtd' 
        ),'group' => array('ebook_id'))));
    }
}