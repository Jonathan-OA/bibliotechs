<?php
/**
 * Created by JetBrains PhpStorm.
 * User: PauloFelipe
 * Date: 30/01/14
 * Time: 18:54
 * To change this template use File | Settings | File Templates.
 */
class Usuario extends AppModel{
    public $name = 'Usuario';
    public $validate = array(
    );

    public $belongsTo = array('Conta');
}
?>