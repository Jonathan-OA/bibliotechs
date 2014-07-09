<?php
	$this->Js->set('myArray', $usuarios);
    echo $this->Js->writeBuffer(array('onDomReady' => false));
?>

    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {

        var ar1 = ['Cidade', 'Quantidade'];
        var dados = [];
        dados.push(ar1);

         for (var i in window.app.myArray){
          var quantidade = parseInt(window.app.myArray[i][0]['qtd']);
          var ar2 = [window.app.myArray[i]['Usuario']['cidade'], quantidade];
          dados.push(ar2);
       }
        var data = google.visualization.arrayToDataTable(dados);

        var options = {
          title: 'Usuários por Cidade',
          hAxis: {title: 'Cidade', titleTextStyle: {color: 'black'}}
        };

        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>


<table class="with-filter">
    <thead>
    <tr>
        <th>Quantidade de Usuários</th>
        <th>Cidade</th>
    </tr>
    </thead>
    <tbody>
    <?php foreach ($usuarios as $usuario): ?>
        <tr>
            <td><?php echo $usuario[0]['qtd']; ?></td>
            <td><?php echo $usuario['Usuario']['cidade']; ?></td>       

    <?php endforeach; ?>
    </tbody>

</table>


<div id="chart_div" style=" height: 500px;"></div>

