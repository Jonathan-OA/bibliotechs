<?php
	$this->js->set('myArray', $usuarios);
    echo $this->js->writeBuffer(array('onDomReady' => false));
?>

<script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {

      	var ar1 = ['Estado', 'Qtd'];
        var dados = [];
        dados.push(ar1);

         for (var i in window.app.myArray){
          var quantidade = parseInt(window.app.myArray[i][0]['qtd']);
          var ar2 = [window.app.myArray[i]['Usuario']['estado'], quantidade];
          dados.push(ar2);
       }
     

        var data = google.visualization.arrayToDataTable(dados);

        var options = {
          title: 'Usuários por Estado',
          is3D: true,
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
        chart.draw(data, options);
      }
    </script>



<div class="btn-group">
    <?php echo $this->Html->link('Filtrar', array('controller' => 'relatorios', 'action'=> 'cidade'), array( 'class' => 'button round')); ?>
</div>


<table class="with-filter">
    <thead>
    <tr>
        <th>Quantidade de Usuários</th>
        <th>Estado</th>
    </tr>
    </thead>
    <tbody>
    <?php foreach ($usuarios as $usuario): ?>
        <tr>
            <td><?php echo $usuario[0]['qtd']; ?></td>
            <td><?php echo $usuario['Usuario']['estado']; ?></td>       

    <?php endforeach; ?>
    </tbody>

</table>


<div id="piechart_3d" style=" height: 500px;"></div>

