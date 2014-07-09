<div>
<?php echo $this->Form->create('Editora');?>
    <fieldset>
        <legend><?php echo __('Adicionar Editora'); ?></legend>
        <?php
        echo $this->Form->input('nome', array('label' => 'Nome', 'type' => 'text'));
        echo $this->Form->input('cnpj', array('label' => 'CNPJ', 'type' => 'number'));
        echo $this->Form->input('logradouro', array('label' => 'Logradouro', 'type' => 'text'));
        echo $this->Form->input('numero', array('label' => 'Número', 'type' => 'number'));
        echo $this->Form->input('bairro', array('label' => 'Bairro', 'type' => 'text'));
        echo $this->Form->input('cidade', array('label' => 'Cidade', 'type' => 'text'));
        echo $this->Form->input('estado', array('label' => 'Estado', 'type' => 'text'));
        echo $this->Form->input('pais', array('label' => 'País', 'type' => 'text'));
        ?>
        <?php echo $this->Form->submit('Adicionar', array('class' => 'button round', 'title' => 'Adicionar')); ?>
        </fieldset>
</div>