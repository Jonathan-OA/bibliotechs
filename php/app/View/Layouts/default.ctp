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
?>
<!DOCTYPE html>
<html>
<head>
	<?php echo $this->Html->charset(); ?>
	<title>
		<?php echo $cakeDescription ?>:
		<?php echo $title_for_layout; ?>
	</title>
	<?php
		echo $this->Html->meta('icon', '/logo.png');
		echo $this->Html->css('cake.generic');
		echo $this->fetch('meta');
		echo $this->fetch('css');
		echo $this->fetch('script');
	?>
</head>
<body>
	<div id="container">
		<div id="header">
			<div id='logo'><h1><?php echo $this->Html->link('Nobel', 'home');?></h1></div>
			<div id='search'>'</div>
			<div id='account'>
			    <?php echo $this->Html->link('Login', array('controller' => 'users', 'action' => 'login'));?>
			</div>
		</div>
		<div>
		    <div id="content" style="width: 100%">
		    	<?php echo $this->Session->flash(); ?>
		    	<?php echo $this->fetch('content'); ?>
		    </div>
		</div>
		<div id="footer">


		</div>
	</div>
	<?php echo $this->element('sql_dump'); ?>
</body>
</html>
