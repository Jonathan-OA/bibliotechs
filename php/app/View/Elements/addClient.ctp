<div class="clients_form">
<?php echo $this->Form->create('Client', array('class' => 'form', 'controller' => 'clients', 'action' => 'addClient'));?>
<h2><?php echo __('Adicionar novo cliente '); ?></h2>
<?php
    echo $this->Form->input('name', array('label' => 'Nome'));
    echo $this->Form->input('tel', array('label' => 'Telefone'));
    echo $this->Form->input('cel', array('label' => 'Celular'));
    echo $this->Form->input('birth', array(
        'label' => 'Data de nascimento',
        'type' => 'text',
        'id' => 'datepicker'
    ));
    echo $this->Form->input('email');
    echo $this->Form->input('address', array('label' => 'Endereço'));
?>
<?php echo $this->Form->end(array('id'=>'submitClient', 'label'=>__('Adicionar')));?>
</div>