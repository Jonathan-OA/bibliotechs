<div>
<?php echo $this->Form->create('Ebook', array('enctype' => 'multipart/form-data') );?>
    <div class="row">
        <?php
        echo $this->Form->input('livro_id', array('label' => 'Livro', 'options' => $livros));
        echo $this->Form->input('file', array('type' => 'file', 'label' => 'Arquivo do ebook'));
        echo $this->Form->input('preco_normal', array('label' => 'Preço normal', 'type' => 'number', 'step' => 'any'));
        echo $this->Form->input('preco_asn', array('label' => 'Preço de assinatura', 'type' => 'number', 'step' => 'any'));
        ?>
    </div>
<?php echo $this->Form->submit('Adicionar', array('class' => 'button round', 'title' => 'Adicionar')); ?>
</div>