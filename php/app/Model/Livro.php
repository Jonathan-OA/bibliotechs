<?php
/**
 * Created by JetBrains PhpStorm.
 * User: PauloFelipe
 * Date: 01/02/14
 * Time: 03:02
 * To change this template use File | Settings | File Templates.
 */

class Livro extends AppModel{
    public $belongsTo = array(
        'Editora' => array(
            'className' => 'Editora',
            'foreignKey' => 'editora_id'
        ),
        'Autor' => array(
            'className' => 'Autor',
            'foreignKey' => 'autor_id'
        )
    );
}