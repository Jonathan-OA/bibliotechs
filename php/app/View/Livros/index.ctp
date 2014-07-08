<div class="btn-group">
    <?php echo $this->Html->link('Adicionar', array('controller' => 'livros', 'action'=> 'add'), array( 'class' => 'button round')); ?>
</div>
<br><br>

<table class="with-filter">
    <thead>
    <tr>
        <th>Título</th>
        <th>Gênero</th>
        <th>Autor</th>
        <th>Editora</th>
        <th>Opções</th>
    </tr>
    </thead>
    <tbody>
    <?php foreach ($livros as $livro): ?>
        <tr>
            <td><?php echo $livro['Livro']['titulo']; ?></td>
            <td><?php echo $livro['Livro']['genero']; ?></td>
            <td><?php echo $livro['Autor']['nome']; ?></td>
            <td><?php echo $livro['Editora']['nome']; ?></td>
            <td> 
                <?php echo $this->Html->link($this->Html->image('edit.png',array('alt'=> 'Editar','title' => 'Editar', 'height' => '20px', 'width' => '20px')),array('action' => 'edit/'.$livro['Livro']['id']), array('escape' => false));?>
                <?php echo $this->Form->postLink($this->Html->image('delete.png',array('alt'=> 'Excluir','title' => 'Excluir', 'height' => '20px', 'width' => '20px')),array('action' => 'delete/'.$livro['Livro']['id']),array('confirm' => 'Deseja mesmo excluir?','escape' => false));?>
            </td>
    <?php endforeach; ?>
    </tbody>
</table>