//Menu dropdown - features
function DropDown(el) {
    this.dd = el;
    this.placeholder = this.dd.children('span');
    this.opts = this.dd.find('ul.sub-menu > li > a ');
    this.val = '';
    this.index = -1;
    this.initEvents();
}
DropDown.prototype = {
    initEvents : function() {
        var obj = this;
        obj.dd.on('click', function(event){
            $('.menu2').not(this).removeClass('active');
            $('.menu').not(this).removeClass('active');
            $(this).toggleClass('active');
            return false;
        });
        obj.opts.on('click',function(){
            var opt = $(this);
            var url = opt.attr('href');
            window.location = url;
        });
    }
}
$(function() {
    var dd = new DropDown( $('.menu'));
    $(document).click(function() {
        // all dropdowns
        $('.menu').removeClass('active');
    });
});

//Menu dropdown - user config
function DropDown2(el){
    this.dd = el;
    this.placeholder = this.dd.children('span');
    this.opts = this.dd.find('ul.sub-menu2 > li > a');
    this.opts2 = this.dd.find('ul.sub-menu2 > li > ul > li > a');
    this.val = '';
    this.index = -1;
    this.initEvents();
}
DropDown2.prototype = {
    initEvents : function() {
        var obj = this;
        obj.dd.on('click', function(event){
            $('.menu').not(this).removeClass('active');
            $('.menu2').not(this).removeClass('active');
            $(this).toggleClass('active');
            return false;
        });
        obj.opts2.on(
            'click',function(){
                window.location.href = $(this).attr('href');
            }
        );
        obj.opts.on('click',function(){
            var opt = $(this);
            var url = opt.attr('href');
            window.location = url;
        });
    }
}
$(function() {
    var dd = new DropDown2( $('.menu2'));
    $(document).click(function() {
        // all dropdowns
        $('.menu2').removeClass('active');
    });
});

//tabs (stops/index, parameters/index)
$.tabs = function (){
    var tabs = 'div#tabs';
    var content = 'ul#tab-content';
    $(content).find('li').hide();
    $(content).find('li.grid.selected').show();
    $(tabs + ' a').click(function(){
        $(tabs + ' a').removeClass('selected');
        $(this).addClass('selected');
        $(content).find('li').hide();
        $(content +  ' ' + $(this).attr('href')).show();
        return false;
    });
};
/*$('.nav-tabs a').click(function (e) {
    e.preventDefault();
    $(this).tab('show');
});*/

//Box
function noteBox(event_id){
    $.ajax({
        url: app.url + "/Events/showInBox",
        type: "POST",
        data: {"data[Event][id]": event_id},
        success: function(data){
            $('#detail_box').append(data);
        }
    });
}

function photoBox(event_id){
    $.ajax({
        url: app.url + "/Events/showInBox",
        type: "POST",
        data: {"data[Event][id]": event_id},
        success: function(data){
            $('#detail_box').append(data);
        }
    });
}
function signatureBox(event_id){
    $.ajax({
        url: app.url + "/Events/showInBox",
        type: "POST",
        data: {"data[Event][id]": event_id},
        success: function(data){
            $('#detail_box').append(data);
        }
    });
}
function photoItemBox(item_id){
    $.ajax({
        url: app.url + "/Items/photo",
        type: "POST",
        data: {"data[Item][id]": item_id},
        success: function(data){
            $('#detail_box').append(data);
        }
    });
}
function occurrencesTypesForm(i){
    var pathArray = window.location.pathname.split( '/' );
    var type = pathArray[4];
    $.ajax({
        url: app.url + "/OccurrencesTypes/form_add/"+i,
        type: "POST",
        data: {"data[type]": type},
        success: function(data){
            $('#occurrences_types').append(data);
        }
    });
}

function parametersForm(i){
    $.ajax({
        url: app.url + "/Parameters/form_add/"+i,
        type: "POST",
        data: {},
        success: function(data){
            $('#parameters').append(data);
        }
    });
}

//timer - stops/index
function timer(tempo){
        if (tempo >= 0) {
            if($('#clock').hasClass('active')){
                var el = document.getElementById("timer");
                if( el ){
                    secondscamp = parseInt(tempo);
                    hours2 = parseInt(secondscamp / 3600);
                    secondscamp = secondscamp % 3600;
                    minutes2 = "" + parseInt(secondscamp / 60);
                    secondscamp = "" + secondscamp % 60;
                    if(minutes2.length == 1) minutes2 = "0" + minutes2;
                    if(secondscamp.length == 1) secondscamp = "0" + secondscamp;
                    el.innerHTML = "Atualiza&ccedil;&atilde;o: " + minutes2 + ":" + secondscamp + "</div>"
                }
                tempo--;
            }
            setTimeout("timer("+tempo+")", 1000);
        }else location.reload();
}
//checkbox da tela OccurrencesTypes/add.ctp
function checkboxOccurrencesTypes(i, type){
    if($("#OccurrencesType"+i+type).prop("checked"))
        $("#OccurrencesType"+i+type).prop('checked', false);
    else
        $("#OccurrencesType"+i+type).prop('checked', true);
}

//Content
$(document).ready(function(){
    /* Carrega a função das abas */
    $.tabs();

    //multiplos tipos de ocorrencias a serem adicionados
    if($(".form-occurrences-type").length > 0){
        occurrencesTypesForm(1);

        $("#add_new").click(function(){
            var last_item = $(".occurrence_type").last().attr('id');
            if(last_item > 0){
                last_item = parseInt(last_item) + 1;
            }
            else{
                last_item = 1;
            }
            occurrencesTypesForm(last_item);
        });
    }

    //multiplos parametros a serem adicionados
    if($(".form-parameters").length > 0){
        parametersForm(1);

        $("#add_new").click(function(){
            var last_item = $(".parameter").last().attr('id');
            if(last_item > 0){
                last_item = parseInt(last_item) + 1;
            }
            else{
                last_item = 1;
            }
            parametersForm(last_item);
        });
    }

    //refresh button
    $( "#clock").click(function() {
        $(this).toggleClass('active');
        if($(this).hasClass('active')) $(this).prop('title', 'Desativar atualização');
        else $(this).prop('title', 'Ativar atualização');
    }).hover(function() {
        $(this).toggleClass('hover');
    });

    //progress bar
    $("#progressbar input").each(function (){
        var div_value = $(this).val();
        var values = div_value.split("/");
        var parcial = parseInt(values[0], 10);
        var total = parseInt(values[1], 10);
        var porcentagem = (100*parcial/total);
        $(this).parent().progressbar({
            value: porcentagem
        });
    });

    //row link
    $('.table_routes').find('tr').not("#table_header").click( function() {
        window.location = window.app.url + $(this).find('a').attr('href');
    }).hover( function() {
            $(this).toggleClass('hover');
        });

    //Box
    $("#table_stops").resizable({
        handles: 's'
    });
	$("#table_history").resizable({
        handles: 's'
    });
	$("#table_pauses").resizable({
        handles: 's'
    });

    $( "tr #items_icon").click(function() {
        $.ajax({
            url: app.url + "/Items/index",
            type: "POST",
            data: {"data[Item][stop_id]": $(this).closest('tr').find("input").val()},
            success: function(data){
                $('#detail_box').append(data);
            }
        });
    });

    $( "#resizableItemsBox").resizable({
        handles: 's, e',
        delay: 150,
        animate: true
    });

    $( "tr #incidents_icon").click(function() {
        $.ajax({
            url: app.url + "/Events/incidents",
            type: "POST",
            data: {"data[Event][stop_id]": $(this).closest('tr').find("input").val()},
            success: function(data){
                $('#detail_box').append(data);
            }
        });
    });

    $( ".submit input").click(function() {
        var box = $(this).parent().find('div');
        alert(box);
        $.ajax({
            url: app.url + "/Stops/send_email",
            type: "POST",
            data: {
                "data[Stop][to]": box.find('input#StopTo').val(),
                "data[Stop][cc]": box.find('input#StopCc').val(),
                "data[Stop][subject]": box.find('input#StopSubject').val(),
                "data[Stop][message_]": box.find('input#StopMessageHeader').val(),
                "data[Stop][message]": box.find('input#StopMessage').val()
            },
            success: function(data){
                box.html('Email enviado');
            }
        });
    });

    function signatureBox(event_id){
        $.ajax({
            url: app.url + "/Events/signature",
            type: "POST",
            data: {"data[Event][id]": event_id},
            success: function(data){
                $('#detail_box').append(data);
            }
        });
    }

    $( "tr #email_icon").click(function() {
        $.ajax({
            url: app.url + "/Stops/email",
            type: "POST",
            data: {"data[Stop][id]": $(this).closest('tr').find("input").val()},
            success: function(data){
                $('#detail_box').append(data);
            }
        });
    });

    $( "tr #delete_button").click(function() {
        if (confirm('Tem certeza que deseja apagar?')) {
            $.ajax({
                url: app.url + "/Imports/delete",
                type: "POST",
                data: {id: $(this).closest('tr').find("input").val()},
                success: function(){
                    window.location.reload();
                }
            });
        }
    });

    $( "tr #assign_button" ).click(function() {
        var idRoute = $(this).closest('tr').find("input").val();
        $.ajax({
            type: "post",
            url: "../users/driversToAssign",
            data: '{}',
            cache: false,
            success: function(data) {
                if (data.length > 0){
                    $("#RoutesUserDriverSelect").html(data);
                    $("#RoutesId").val(idRoute);
                    $("#assign_dialog").dialog("open");
                }
                else alert("Não existem motoristas para liberar");
            }
        });
    });

    $( "#return_button").click(function() {
        if (confirm('Deseja realmente retornar esta rota?')) {
            $.ajax({
                url: "returnRoute",
                type: "POST",
                data: {id: $(this).closest('tr').find("input").val()},
                success: function(){
                    window.location.reload();
                }
            });
        }
    });

    $( "#stops_dialog" ).dialog({
        autoOpen: false,
        height: 300,
        width: 350,
        modal: true
    }).find(".submit > input").click(function(){
        $("#assign_dialog").find('#message_assign').append("Carregando...");
        document.submit();
    });

    $( "#assign_dialog" ).dialog({
        autoOpen: false,
        height: 300,
        width: 350,
        modal: true,
        resizable: false
    });

    $( "#stops_button" ).click(function() {
        var idRoute = $("tr").find("input").val();
        $.ajax({
            type: "post",
            url: "../users/driversToAssign",
            data: '{}',
            cache: false,
            success: function(data) {
                if (data.length > 0){
                    $("#RoutesUserDriverSelect").html(data);
                    $("#RoutesId").val(idRoute);
                    $("#assign_dialog").dialog("open");
                }else alert("Não existem motoristas para liberar");
            }
        });
        $( "#stops_dialog" ).dialog( "open" );
    });

    if($("#stops_index").length > 0){
        //raty star - drivers ranking
        $('#ranking').raty({ readOnly: true, score: 3.5, size: 30, width: "84%"});
        //Refresh
        $(function() {timer(60);});
    }
});

