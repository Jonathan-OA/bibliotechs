<div class="btn-group">
    <?php echo $this->Html->link('Adicionar', array('controller' => 'editoras', 'action'=> 'add'), array( 'class' => 'button round')); ?>
</div>
<br><br>

<table class="with-filter">
    <thead>
    <tr>
        <th>Nome</th>
        <th>CNPJ</th>
        <th>Logradouro</th>
        <th>Número</th>
        <th>Bairro</th>
        <th>Cidade</th>
        <th>Estado</th>
        <th>País</th>
        <th>Opções</th>
    </tr>
    </thead>
    <tbody>
    <?php foreach ($editoras as $editora): ?>
        <tr>
            <td><?php echo $editora['Editora']['nome']; ?></td>
            <td><?php echo $editora['Editora']['cnpj']; ?></td>
            <td><?php echo $editora['Editora']['logradouro']; ?></td>
            <td><?php echo $editora['Editora']['numero']; ?></td>
            <td><?php echo $editora['Editora']['bairro']; ?></td>
            <td><?php echo $editora['Editora']['cidade']; ?></td>
            <td><?php echo $editora['Editora']['estado']; ?></td>
            <td><?php echo $editora['Editora']['pais']; ?></td>
            <td>

            <?php echo $this->Html->link($this->Html->image('edit.png',array('alt'=> 'Editar', 'title' => 'Editar', 'height' => '20px', 'width' => '20px')),array('action' => 'edit/'.$editora['Editora']['id']), array('escape' => false));?>
                <?php echo $this->Form->postLink($this->Html->image('delete.png',array('alt'=> 'Excluir','title' => 'Excluir', 'height' => '20px', 'width' => '20px')),array('action' => 'delete/'.$editora['Editora']['id']),array('confirm' => 'Deseja mesmo excluir?','escape' => false));?>
            </td>
        </tr>
    <?php endforeach; ?>
    </tbody>
</table>