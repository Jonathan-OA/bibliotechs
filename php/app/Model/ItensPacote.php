<?php
/**
 * Created by JetBrains PhpStorm.
 * User: PauloFelipe
 * Date: 01/02/14
 * Time: 03:02
 * To change this template use File | Settings | File Templates.
 */

class ItensPacote extends AppModel{
    public $belongsTo = array(
        'Pacote' => array(
            'className' => 'Pacote',
            'foreignKey' => 'pacote_id'
        ),
        'Ebook' => array(
            'className' => 'Ebook',
            'foreignKey' => 'ebook_id'
        )
    );
}