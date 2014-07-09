<!-- app/View/Contas/add.ctp -->
<div>
    <?php echo $this->Form->create();?>
    <fieldset>
        <legend><?php echo __('Add User'); ?></legend>
        <?php echo $this->Form->input('Conta.username',array('type' => 'text'));
        echo $this->Form->input('Conta.password');
        echo $this->Form->input('Conta.confirm_password');
        echo $this->Form->input('Conta.email');
        echo $this->Form->input('Usuario.nome');
        echo $this->Form->input('Usuario.sexo');
        echo $this->Form->input('Usuario.data_nascimento',array(
            'dateFormat' => 'DMY',
            'minYear' => date('Y') - 90,
            'maxYear' => date('Y')
        ));
        echo $this->Form->input('Usuario.logradouro');
        echo $this->Form->input('Usuario.numero');
        echo $this->Form->input('Usuario.bairro');
        echo $this->Form->input('Usuario.cidade');
        echo $this->Form->input('Usuario.estado');
        echo $this->Form->input('Usuario.pais');
        ?>
    </fieldset>
    <?php echo $this->Form->end(__('Submit'));?>
</div>