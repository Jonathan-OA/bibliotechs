<div>
<?php echo $this->Form->create('Autor');?>
    <fieldset>
        <legend><?php echo __('Editar Autor'); ?></legend>
        <?php
        echo $this->Form->input('nome', array('label' => 'Nome'));
        echo $this->Form->input('data_nascimento', array('label' => 'Data de Nascimento'));
        echo $this->Form->input('cidade', array('label' => 'Cidade'));
        echo $this->Form->input('pais', array('label' => 'País'));
        ?>
	<?php echo $this->Form->submit('Editar', array('class' => 'button round ', 'title' => 'Editar')); ?>
</fieldset>
</div>