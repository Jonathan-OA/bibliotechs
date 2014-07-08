<div>
<?php echo $this->Form->create('Livro');?>
    <fieldset>
        <legend><?php echo __('Editar Livro'); ?></legend>
        <?php
        echo $this->Form->input('titulo', array('label' => 'Título'));
        echo $this->Form->input('genero', array('label' => 'Genero'));
        echo $this->Form->input('sinopse', array('label' => 'Sinopse'));
        echo $this->Form->input('edicao', array('label' => 'Edição'));
        echo $this->Form->input('ano', array('label' => 'Ano'));
        echo $this->Form->input('paginas', array('label' => 'Páginas'));
        echo $this->Form->input('autor_id', array('label' => 'Autor', 'options' => $autores));
        echo $this->Form->input('editora_id', array('label' => 'Editora', 'options' => $editoras));
        ?>
        <?php echo $this->Form->submit('Editar', array('class' => 'button round ', 'title' => 'Editar')); ?>
    </fieldset>
</div>