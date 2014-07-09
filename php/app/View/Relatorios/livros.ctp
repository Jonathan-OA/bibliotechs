<?php
	$this->js->set('myArray', $livros);
    echo $this->js->writeBuffer(array('onDomReady' => false));
?>

<script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {

      	var ar1 = ['Livro', 'Quantidade'];
        var dados = [];
        dados.push(ar1);

         for (var i in window.app.myArray){
          var quantidade = parseInt(window.app.myArray[i][0]['qtd']);
          var ar2 = [window.app.myArray[i] ['Ebook']['Livro']['titulo'], quantidade];
          dados.push(ar2);
       }
     

        var data = google.visualization.arrayToDataTable(dados);

        var options = {
          title: 'Livros mais presentes em pacotes',
          is3D: true,
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
        chart.draw(data, options);
      }
    </script>


<table class="with-filter">
    <thead>
    <tr>
        <th>Pacotes</th>
        <th>Livros</th>
    </tr>
    </thead>
    <tbody>
    <?php foreach ($livros as $livro): ?>
        <tr>
            <td><?php echo $livro[0]['qtd']; ?></td>
            <td><?php echo $livro['Ebook']['Livro']['titulo']; ?></td>       

    <?php endforeach; ?>
    </tbody>

</table>


<div id="piechart_3d" style=" height: 500px;"></div>

