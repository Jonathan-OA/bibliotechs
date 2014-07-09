<!-- app/View/Contas/add.ctp -->
 <?php echo $this->Html->script('jquery-1.10.2'); ?>
 <?php echo $this->Html->script('jquery-ui-1.10.4.custom'); ?>
 <?php echo $this->Html->script('jquery-ui-1.10.4.custom.min'); ?>



<script>
  $(function() {
    $( "#datepicker" ).datepicker();
  });
  </script>



    <?php echo $this->Form->create('User');?>
    <div class="row">
    <div class="small-12 colums">
    <fieldset>
        <legend><?php echo __('Add User'); ?></legend>
        <?php echo $this->Form->input('Conta.username',array('type' => 'text'));
        echo $this->Form->input('Conta.password', array('label' => 'Senha'));
        echo $this->Form->input('Conta.confirm_password',array('type' => 'password', 'label' => 'Confirme a senha'));
        echo $this->Form->input('Conta.email');
        echo $this->Form->input('Usuario.nome',array('class' => 'small-6 columns'));
        $options = array('m' => 'Masculino', 'f' => 'Feminino');
        $attributes = array('legend' => 'Sexo');
        echo $this->Form->radio('Usuario.sexo', $options, $attributes);
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
         <?php echo $this->Form->submit('Adicionar', array('class' => 'button round', 'title' => 'Adicionar')); ?>
    </fieldset>
    </div>
</div>