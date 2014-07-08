<div class="btn-group">
    <?php echo $this->Html->link('Adicionar', array('controller' => 'contas', 'action'=> 'add'), array( 'class' => 'button round')); ?>
</div>
<br><br>
<table class="with-filter">
    <thead>
    <tr>
        <th>Username</th>
        <th>Nome</th>
        <th>Sexo</th>
        <th>Data de nascimento</th>
        <th>Endereço</th>
        <th>Email</th>
        <th>Usuário desde</th>
        <th>Pontuação</th>
        <th>Opções</th>
    </tr>
    </thead>
    <tbody>
    <?php foreach ($usuarios as $usuario): ?>
        <tr>
            <td><?php echo $usuario['Conta']['username']; ?></td>
            <td><?php echo $usuario['Usuario']['nome']; ?></td>
            <td><?php
                if($usuario['Usuario']['sexo'] =='m') echo 'Masculino';
                else echo 'Feminino';
                ?>
            </td>
            <td><?php echo  $usuario['Usuario']['data_nascimento'];?></td>
            <td><?php echo $usuario['Usuario']['logradouro'].', '.$usuario['Usuario']['numero'].', '.$usuario['Usuario']['bairro'].', '.$usuario['Usuario']['cidade'].', '.$usuario['Usuario']['estado'].', '.$usuario['Usuario']['pais']; ?></td>
            <td><?php echo $usuario['Conta']['email']; ?></td>
            <td><?php echo $usuario['Conta']['created']; ?></td>
            <td><?php echo $usuario['Conta']['pont_total']; ?></td>
            <td>

             <?php echo $this->Html->link($this->Html->image('edit.png',array('alt'=> 'Editar','title' => 'Editar', 'height' => '20px', 'width' => '20px')),array('action' => 'edit/'.$usuario['Conta']['username']), array('escape' => false));?>
                <?php echo $this->Form->postLink($this->Html->image('delete.png',array('alt'=> 'Excluir', 'title' => 'Excluir', 'height' => '20px','width' => '20px')),array('action' => 'delete/'.$usuario['Conta']['username']),array('confirm' => 'Deseja mesmo excluir?','escape' => false));?>
            </td>
        </tr>
    <?php endforeach; ?>
    </tbody>
</table>
