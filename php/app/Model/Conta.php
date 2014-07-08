<?php
    App::uses('AuthComponent', 'Controller/Component');
    class Conta extends AppModel{
        public $name = 'Conta';
        public $primaryKey = 'username';
        public $validate = array(
            'username' => array(
                'required' => array(
                    'rule' => array('notEmpty'),
                    'message' => 'Digite um username válido'
                )
            ),
            'password' => array(
                'required' => array(
                    'rule' => array('notEmpty'),
                    'message' => 'Digite uma senha'
                )
            ),
            'email' => array(
                "email" => array(
                    'rule' => 'email',
                    'required' => true,
                    'allowEmpty' => false
                )
            )
        );

        public $belongsTo = array('Usuario');

        public function beforeSave($options = array()) {
            if (isset($this->data[$this->alias]['password'])) {
                $this->data[$this->alias]['password'] = AuthComponent::password($this->data[$this->alias]['password']);
            }
            return true;
        }
    }