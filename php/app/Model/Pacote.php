<?php
/**
 * Created by JetBrains PhpStorm.
 * User: PauloFelipe
 * Date: 01/02/14
 * Time: 03:02
 * To change this template use File | Settings | File Templates.
 */

class Pacote extends AppModel{

    public $hasMany = array(
        'ItensPacote' => array(
            'className' => 'ItensPacote',
            'foreignKey' => 'pacote_id',
            'dependent'=> true
        )
    );
}