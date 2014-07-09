<div class="btn-group">
    <?php echo $this->Html->link('Adicionar', array('controller' => 'autores', 'action'=> 'add'), array( 'class' => 'button round')); ?>
</div>
<br><br>

<table class="with-filter">
    <thead>
    <tr>
        <th>Nome</th>
        <th>Data Nascimento</th>
        <th>Cidade</th>
        <th>País</th>
        <th>Opções</th>
    </tr>
    </thead>
    <tbody>
    <?php foreach ($autores as $autor): ?>
        <tr>
            <td><?php echo $autor['Autor']['nome']; ?></td>
            <td><?php echo $this->time->format($autor['Autor']['data_nascimento'], '%d/%m/%Y'); ?></td>
            <td><?php echo $autor['Autor']['cidade']; ?></td>
            <td><?php echo $autor['Autor']['pais']; ?></td>
            <td>
           		 <?php echo $this->Html->link($this->Html->image('edit.png',array('alt'=> 'Editar','title' => 'Editar', 'height' => '20px', 'width' => '20px')),array('action' => 'edit/'.$autor['Autor']['id']), array('escape' => false));?>
                 <?php echo $this->Form->postLink($this->Html->image('delete.png',array('alt'=> 'Excluir','title' => 'Excluir', 'height' => '20px', 'width' => '20px')),array('action' => 'delete/'.$autor['Autor']['id']),array('confirm' => 'Deseja mesmo excluir?','escape' => false));?>
            </td>
        </tr>
    <?php endforeach; ?>
    </tbody>
</table>