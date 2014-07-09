<div>
<?php echo $this->Form->create();?>
    <div class="row">
        <?php
        echo $this->Form->input('ItensPacote.1.ebook_id', array('label' => 'Livro', 'options' => $ebooks));
        echo $this->Form->input('ItensPacote.2.ebook_id', array('label' => 'Livro', 'options' => $ebooks));
        echo $this->Form->input('ItensPacote.3.ebook_id', array('label' => 'Livro', 'options' => $ebooks));
        echo $this->Form->input('ItensPacote.4.ebook_id', array('label' => 'Livro', 'options' => $ebooks));
        echo $this->Form->input('ItensPacote.5.ebook_id', array('label' => 'Livro', 'options' => $ebooks));
        ?>
    </div>
<?php echo $this->Form->end(__('Adicionar'));?>
</div>