// Adiciona filtros em tabelas
$(document).ready(function(){
    $('.with-filter').addClass('table table-striped table-bordered').dataTable({
        "order": [[ 3, "desc" ]]
    });
});

