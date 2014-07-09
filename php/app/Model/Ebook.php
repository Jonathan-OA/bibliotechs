<?php
/**
 * Created by JetBrains PhpStorm.
 * User: PauloFelipe
 * Date: 01/02/14
 * Time: 03:02
 * To change this template use File | Settings | File Templates.
 */

class Ebook extends AppModel{
    public $belongsTo = array(
        'Livro' => array(
            'className' => 'Livro',
            'foreignKey' => 'livro_id'
        )
    );
    public $hasMany = array(
        'ItensPacote' => array(
            'className' => 'ItensPacote',
            'foreignKey' => 'ebook_id'
        )
    );
}