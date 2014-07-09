<?php
/**
 *
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.View.Layouts
 * @since         CakePHP(tm) v 0.10.0.1076
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */
$cakeDescription = __d('cake_dev', 'Bibliotechs');
?><!DOCTYPE html>
<html lang="pt-br">
<head>
    <?php echo $this->Html->charset(); ?>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>
        <?php echo $cakeDescription ?>:
        <?php echo $title_for_layout; ?>
    </title>
    <?php
    // META DATA
    echo $this->Html->meta('icon', '/logo.png');        // TODO adicionar logo
    echo $this->fetch('meta');

    // IMPORT CSS
    //echo $this->Html->css('cake.generic');
    echo $this->Html->css('jquery.dataTables');
    echo $this->Html->css('normalize');
    echo $this->Html->css('foundation');
    echo $this->Html->css('app');
    echo $this->fetch('css');

    // IMPORT JavaScript
    echo $this->Html->script('jquery'); // jQuery
    echo $this->Html->script('jquery.dataTables'); // Lib para criar tabelas interativas e com filtros
    echo $this->Html->script('foundation.min.js'); // Funções próprias do sistema
    echo $this->Html->script('modernizr'); // Funções próprias do sistema
    echo $this->fetch('script');
    ?>

    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Limelight' rel='stylesheet' type='text/css'>
</head>
<body>
 <div class="row"> <!-- Corpo -->
     <div class="small-12 columns">
       <div class="fixed">
        <div class="row collapse topbar">
            <div class="small-12 small-centered columns">
                <a href="./index.php">Bibliotechs </a>     
            </div>
        </div>

        <div class="row collapse">
            <div class="hide-for-small-only medium-2 columns left">
                <ul class="side-nav text-center clearfix">
                  <li class="divider"></li>
                  <li class="active"><?php echo $this->Html->image("user.png", array(
    													     "alt" => "Usuarios",
    													     "title" => 'Usuarios',
    														 "url" => array('controller' => 'Contas', 'action' => '')));?>
                                 Usuários</li>
                  <li class="divider"></li>
                  <li class="active"><?php echo $this->Html->image("book.png", array(
    													     "alt" => "Livros",
    													     "title" => 'Livros',
    														 "url" => array('controller' => 'Livros', 'action' => '')));?>
                                 Livros</li>
                  <li class="divider"></li>
                  <li class="active"><?php echo $this->Html->image("ebook.png", array(
    													     "alt" => "EBooks",
    													     "title" => 'EBooks',
    														 "url" => array('controller' => 'EBooks', 'action' => '')));?>
                                 E-Books</li>
                  <li class="divider"></li>
                   <li class="active"><?php echo $this->Html->image("package.png", array(
                                   "alt" => "Pacotes",
                                   "title" => 'Pacotes',
                                 "url" => array('controller' => 'Pacotes', 'action' => '')));?>
                                 Pacotes</li>
                  <li class="divider"></li>
                  <li class="active"><?php echo $this->Html->image("editora.png", array(
    													     "alt" => "Editoras",
    													     "title" => 'Editoras',
    														 "url" => array('controller' => 'Editoras', 'action' => '')));?>
                                 Editoras</li>
    			  <li class="divider"></li>
                  <li class="active"><?php echo $this->Html->image("autor.png", array(
    													     "alt" => "Autores",
    													     "title" => 'Autores',
    														 "url" => array('controller' => 'Autores', 'action' => '')));?>
                                 Autores</li>
                  <li class="divider"></li>
                  <li class="active"><?php echo $this->Html->image("relatorios.png", array(
    													     "alt" => "Relatorios",
    													     "title" => 'Relatórios',
    														 "url" => array('controller' => 'Relatorios', 'action' => '')));?>
                                 Relatorios</li>
                  <li class="divider"></li>
              </ul>
          </div>
          <div class="small-10 columns text-justify right">
             <div id="content">
                <?php echo $this->Session->flash(); ?>
                <?php echo $this->fetch('content'); ?>
            </div>
        </div>
    </div>
</div>
</div>
</div>

  <script>
    $(document).foundation();
  </script>

</body>
</html>
