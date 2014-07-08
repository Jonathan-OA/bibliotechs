<?php
/**
 * Created by JetBrains PhpStorm.
 * User: PauloFelipe
 * Date: 01/02/14
 * Time: 03:02
 * To change this template use File | Settings | File Templates.
 */

class Editora extends AppModel{
    public $hasMany = array(
        'Livro' => array(
            'className' => 'Livro',
            'foreignKey' => 'editora_id'
        )
    );
}