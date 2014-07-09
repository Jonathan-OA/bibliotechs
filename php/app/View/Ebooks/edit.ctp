<div>
<?php echo $this->Form->create('Ebook', array('url' => array('controller' => 'ebooks', 'action' => 'edit'), 'enctype' => 'multipart/form-data') );?>
    <div class="row">
        <?php
        echo $this->Form->input('livro_id', array('label' => 'Livro', 'options' => $livros));
        echo $this->Form->input('file', array('type' => 'file', 'label' => 'Arquivo do ebook'));
        echo $this->Form->input('preco_normal', array('label' => 'Preço normal'));
        echo $this->Form->input('preco_asn', array('label' => 'Preço de assinatura'));
        ?>
    </div>
<?php echo $this->Form->end(__('Adicionar'));?>
</div>