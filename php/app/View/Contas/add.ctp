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
        echo $this->Form->input('Conta.password');
        echo $this->Form->input('Conta.confirm_password');
        echo $this->Form->input('Conta.email');
        echo $this->Form->input('Usuario.nome',array('class' => 'small-6 columns'));
        echo $this->Form->input('Usuario.sexo',array('class' => 'small-6 columns'));
        echo $this->Form->input('Usuario.data_nascimento',array('type' => 'text','id' => 'datepicker'));
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