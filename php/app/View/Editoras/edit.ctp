<div>
<?php echo $this->Form->create('Editora');?>
    <fieldset>
        <legend><?php echo __('Editar Autor'); ?></legend>
        <?php
        echo $this->Form->input('nome', array('label' => 'Nome'));
        echo $this->Form->input('cnpj', array('label' => 'CNPJ'));
        echo $this->Form->input('logradouro', array('label' => 'Logradouro'));
        echo $this->Form->input('numero', array('label' => 'Número'));
        echo $this->Form->input('bairro', array('label' => 'Bairro'));
        echo $this->Form->input('cidade', array('label' => 'Cidade'));
        echo $this->Form->input('estado', array('label' => 'Estado'));
        echo $this->Form->input('pais', array('label' => 'País'));
        ?>
<?php echo $this->Form->submit('Editar', array('class' => 'button round ', 'title' => 'Editar')); ?>
</fieldset>
</div>