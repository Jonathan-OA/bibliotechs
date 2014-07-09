<div class="btn-group">
    <?php echo $this->Html->link('Adicionar', array('controller' => 'ebooks', 'action'=> 'add'), array( 'class' => 'button')); ?>
</div>
<br><br>

<table class="with-filter">
    <thead>
    <tr>
        <th>Título</th>
        <th>Arquivo</th>
        <th>Extensão</th>
        <th>Tamanho</th>
        <th>Preço Normal</th>
        <th>Preço de assinatura</th>

        <th>Disponibilidade</th>
        <th>Opções</th>
    </tr>
    </thead>
    <tbody>
    <?php foreach ($ebooks as $ebook): ?>
        <tr>
            <td><?php echo $ebook['Livro']['titulo']; ?></td>
            <td><?php echo $ebook['Ebook']['caminho']; ?></td>
            <td><?php echo $ebook['Ebook']['formato']; ?></td>
            <td><?php echo $ebook['Ebook']['tamanho'].' kB'; ?></td>
            <td><?php echo $ebook['Ebook']['preco_normal']; ?></td>
            <td><?php echo $ebook['Ebook']['preco_asn']; ?></td>
            <td><input type="checkbox" name="disponivel" disabled='disabled' <?php if($ebook['Ebook']['disponivel']==1) echo 'checked';?> >
            </td>
            <td>
                <?php echo $this->Html->link($this->Html->image('edit.png',array('alt'=> 'Editar','title' => 'Editar', 'height' => '20px', 'width' => '20px')),array('action' => 'edit/'.$ebook['Ebook']['id']), array('escape' => false));?>
                <?php echo $this->Form->postLink($this->Html->image('delete.png',array('alt'=> 'Excluir', 'title' => 'Excluir', 'height' => '20px','width' => '20px')),array('action' => 'delete/'.$ebook['Ebook']['id']),array('confirm' => 'Deseja mesmo excluir?','escape' => false));?>
                <?php
                if($ebook['Ebook']['disponivel'] == 0) echo $this->Html->link($this->Html->image('disp.png',array('alt'=> 'Disponibilizar','title' => 'Disponibilizar', 'height' => '20px', 'width' => '20px')) ,array('action' => 'make_available/'.$ebook['Ebook']['id']), array('escape' => false));
                if($ebook['Ebook']['disponivel'] == 1) echo $this->Html->link($this->Html->image('indisp.png',array('alt'=> 'Indisponibilizar','title' => 'Indisponibilizar', 'height' => '20px', 'width' => '20px')),array('action' => 'make_unavailable/'.$ebook['Ebook']['id']), array('escape' => false));
                ?>
            </td>
        </tr>
    <?php endforeach; ?>
    </tbody>
</table>