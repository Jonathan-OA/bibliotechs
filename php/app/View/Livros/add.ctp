<div>
<?php echo $this->Form->create('Livro');?>
    <fieldset>
        <legend><?php echo __('Adicionar Livro'); ?></legend>
        <?php
        echo $this->Form->input('titulo', array('label' => 'Título', 'type' => 'text'));
        echo $this->Form->input('genero', array('label' => 'Genero', 'type' => 'text'));
        echo $this->Form->input('sinopse', array('label' => 'Sinopse', 'type' => 'text'));
        echo $this->Form->input('edicao', array('label' => 'Edição', 'type' => 'number'));
        echo $this->Form->input('ano', array('label' => 'Ano', 'type' => 'number'));
        echo $this->Form->input('paginas', array('label' => 'Páginas' , 'type' => 'number'));
        echo $this->Form->input('autor_id', array('label' => 'Autor', 'options' => $autores));
        echo $this->Form->input('editora_id', array('label' => 'Editora', 'options' => $editoras));
        ?>
        <?php echo $this->Form->submit('Adicionar', array('class' => 'button round ', 'title' => 'Adicionar')); ?>
    </fieldset>
</div>