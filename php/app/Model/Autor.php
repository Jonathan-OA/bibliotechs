<?php
/**
 * Created by JetBrains PhpStorm.
 * User: PauloFelipe
 * Date: 01/02/14
 * Time: 03:02
 * To change this template use File | Settings | File Templates.
 */

class Autor extends AppModel{
    public $useTable = 'Autores';
    public $validate = array(
        'nome' => array(
            'rule' => array('custom', '/[a-zA-Z|]*/'),
            'required'=> true,
            'allowEmpty' => false,
            'message' => 'Apenas letras'
        )
    );
    public $hasMany = array(
        'Livro' => array(
            'className' => 'Livro',
            'foreignKey' => 'autor_id'
        )
    );
}