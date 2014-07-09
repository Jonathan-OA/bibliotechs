<div class="btn-group">
    <?php echo $this->Html->link('Adicionar', array('controller' => 'pacotes', 'action'=> 'add'), array( 'class' => 'button')); ?>
</div>
<br><br>
<table class="with-filter">
    <thead>
    <tr>
        <th>Pacote</th>
        <th>Livro</th>
        <th>Preço Normal</th>
        <th>Preço de assinatura</th>
        <th>Disponibilidade</th>
        <th>Opções</th>
    </tr>
    </thead>
    <tbody>
    <?php foreach ($itens as $item):
        ?>
        <tr>
            <td><?php echo $item['Pacote']['id']; ?></td>
            <td><?php echo $item['Ebook']['Livro']['titulo']; ?></td>
            <td><?php echo $item['Ebook']['preco_normal']; ?></td>
            <td><?php echo $item['Ebook']['preco_asn']; ?></td>
            <td><input type="checkbox" name="disponivel" disabled='disabled' <?php if($item['Pacote']['tipo']==1) echo 'checked';?> >
            </td>
            <td>
                <?php echo $this->Form->postLink('Excluir',array('action' => 'delete/'.$item['Pacote']['id']),array('confirm' => 'Deseja mesmo excluir todo o pacote?'));?>|
                <?php
                if($item['Pacote']['tipo'] == 0) echo $this->Html->link('Disp.',array('action' => 'make_available/'.$item['Pacote']['id']));
                if($item['Pacote']['tipo'] == 1) echo $this->Html->link('Indisp.',array('action' => 'make_unavailable/'.$item['Pacote']['id']));
                ?>
            </td>
        </tr>
    <?php endforeach; ?>
    </tbody>
</table>