$(document).ready(function(){
    //when form from orders is ready, do:
    if($('.orders_form').length > 0){
        toggleAmountPaid();
        addItems();

        //Autocomplete clients
        $("#ClientName").autocomplete({
            source: window.app.clientsList
        }).blur(function(){
                var t = this;
                $.ajax({
                    type: 'post',
                    url: "../clients/completeFields",
                    data: {"data[name]": $(this).val()},
                    success: function(data){
                        var r = JSON.parse(data);
                        $("#ClientAddress").val(r.Client.address);
                        $("#ClientNumber").val(r.Client.number);
                        $("#ClientDistrict").val(r.Client.district);
                        $("#ClientCity").val(r.Client.city);
                        $("#ClientTel").val(r.Client.tel);
                        $("#ClientCel").val(r.Client.cel);
                        $("#ClientBirth").val(r.Client.birth);
                        $("#ClientEmail").val(r.Client.email);
                    }
                });
            });
        //Autocomplete clients
        /*$("#ClientName").autocomplete({
            source: "../clients/autocompleteName"
        }).blur(function(){
                var t = this;
                $.ajax({
                    type: 'post',
                    url: "../clients/completeFields",
                    data: {"data[name]": $(this).val()},
                    success: function(data){
                        var r = JSON.parse(data);
                        $("#ClientAddress").val(r.Client.address);
                        $("#ClientNumber").val(r.Client.number);
                        $("#ClientDistrict").val(r.Client.district);
                        $("#ClientCity").val(r.Client.city);
                        $("#ClientTel").val(r.Client.tel);
                        $("#ClientCel").val(r.Client.cel);
                        $("#ClientBirth").val(r.Client.birth);
                        $("#ClientEmail").val(r.Client.email);
                    }
                });
            });
        //Autocomplete books
        $("tr .BookIsbn").autocomplete({
            source: "../books/autocompleteIsbn"
        }).blur(function(){
                var t = this;
                $.ajax({
                    type: 'post',
                    url: "../books/completeFields",
                    data: {"data[isbn]": $(this).val()},
                    success: function(data){
                        var r = JSON.parse(data);
                        var lines = $(t).closest('tr');
                        lines.find("td > div > .BookName").val(r.Book.name);
                        lines.find("td > div > .BookAuthor").val(r.Book.author);
                        lines.find("td > div > .BookEdition").val(r.Book.edition);
                        lines.find("td > div > .BookYear").val(r.Book.year);
                        lines.find("td > div > .BookPublishing").val(r.Book.publishing);
                    }
                });
            });*/

         /*$("tr .BookIsbn").autocomplete({
            source: function(ui){
                $.ajax({
                    url: "../books/autocompleteIsbn",
                    data: {},
                    success: function(data){
                    }

                });
            },
            select: function( event, ui, data ) {
                //alert(ui.item.isbn);
                $(this).val(ui.item.a);
                return false;
            }
        });*/
    }

    //Dialog AddClient
    /*$( "#dialogAddClient" ).dialog({
        autoOpen: false,
        show: {
            effect: "blind",
            duration: 1000
        },
        hide: {
            effect: "blind",
            duration: 1000
        },
        modal: true,
        height: 600,
        width: 500
    });
    $( "#opener" ).click(function() {
        $('#dialogAddClient').dialog('open');  //open the dialog
    });
    $( "#closer" ).click(function() {
        $('#dialogAddClient').dialog('close');
    });

    $("#ClientAddClientForm").submit(function() {
        $.ajax({
            type: 'post',
            url: '../clients/addClient',
            data:  { 'data[Client][name]': $("#ClientName").val(),
                'data[Client][tel]': $("#ClientTel").val(),
                'data[Client][cel]': $("#ClientCel").val(),
                'data[Client][birth]': $("#ClientBirth").val(),
                'data[Client][email]': $("#ClientEmail").val(),
                'data[Client][address]': $("#ClientAddress").val()
            },
            success: function(data){
                if (data.response == 'ok'){
                    $('#dialogAddClient').dialog('close');
                    $("#autocomplete").val($('#ClientName').val());
                }
                else
                    alert('O cliente não pode ser adicionado');
            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert(xhr.status);
                alert(thrownError);
            }
        });
        return false;
    });*/

    //Realizar encomendas
        //Adicionar livros
    $('#add_item').click(function(event){
        addItems();
    });

    function addItems(){
        var optionCount = document.getElementById('items').rows.length;
        var inputHtml =
            '<tr>' +
                '<td>' +
                '<div class="input text">' +
                '<input class="BookIsbn" id="Book' + optionCount + 'Isbn" type="text" name="data[Book][' + optionCount + '][isbn]" />' +
                '</div>' +
                '</td>'+
                '<td>' +
                '<div class="input text">' +
                '<input class="BookName" id="Book' + optionCount + 'Name" type="text" name="data[Book][' + optionCount + '][name]" />' +
                '</div>' +
                '</td>'+
                '<td>' +
                '<div class="input text">' +
                '<input class="BookAuthor" id="Book' + optionCount + 'Author" type="text" name="data[Book][' + optionCount + '][author]" />' +
                '</div>' +
                '</td>'+
                '<td>' +
                '<div class="input text">' +
                '<input class="BookEdition" id="Book' + optionCount + 'Edition" type="text" name="data[Book][' + optionCount + '][edition]" />' +
                '</div>' +
                '</td>'+
                '<td>' +
                '<div class="input text">' +
                '<input class="BookYear" id="Book' + optionCount + 'Year" type="text" name="data[Book][' + optionCount + '][year]" />' +
                '</div>' +
                '</td>'+
                '<td>' +
                '<div class="input text">' +
                '<input class="BookPublishing" id="Book' + optionCount + 'Publishing" type="text" name="data[Book][' + optionCount + '][publishing]" />' +
                '</div>' +
                '</td>'+
                '<td>' +
                '<div class="input text">' +
                '<input class="itemAmount" id="Item' + optionCount + 'Amount" type="text" name="data[Item][' + optionCount + '][amount]" value=1 />' +
                '</div>' +
                '</td>'+
                '<td>' +
                '<div class="input text">' +
                '<input class="itemPrice" id="Item' + optionCount + 'Price" type="text" name="data[Item][' + optionCount + '][price]"/>' +
                '</div>' +
                '</td>'+
                '<td>'+
                '<a href="javascript:void(0);" class="remove">Remover</a>' +
                '</td>' +
                '<div class="input text">' +
                '<input id="Item' + optionCount + 'BookIsbn" type="hidden" name="data[Item][' + optionCount + '][book_isbn]" />' +
                '</div>' +
                '</tr>';
        $('#Item' + optionCount + 'BookIsbn').val($('#Book' + optionCount + 'Isbn').val());
        event.preventDefault();
        $('#items').append(inputHtml);
    }

    //Soma de total pago, saldo, etc
    $("#items").on('click','.remove',function(){
        $(this).parent().parent().remove();
        calculateSum();
    });
    $("#items").on('change', '.itemPrice', function() {
        calculateSum();
    });
    $("#items").on('change', '.itemAmount', function() {
        calculateSum();
    });
    $("#OrderAmountPaidCash").on('change', function() {
        calculateSum();
    });
    $("#OrderAmountPaidCheck").on('change', function() {
        calculateSum();
    });
    $("#OrderAmountPaidCard").on('change', function() {
        calculateSum();
    });
    $("#OrderDiscount").on('change', function() {
        calculateSum();
    });


    function calculateSum(){
        var sum = 0;
        $("#items tr").not('.th').each(function() {
            var price = $(this).find("td > div > input.itemPrice").val().replace(',', '.');
            var amount = $(this).find("td > div > input.itemAmount").val().replace(',', '.');
            var value = price * amount;
            // add only if the value is number
            if(!isNaN(value) && value.length != 0) {
                sum += parseFloat(value);
            }
        });
        $("#OrderAmountCharged").val(sum);

        var balance = sum;
        var cash = $("#OrderAmountPaidCash").val().replace(',', '.');
        var check = $("#OrderAmountPaidCheck").val().replace(',', '.');
        var card = $("#OrderAmountPaidCard").val().replace(',', '.');
        var discount = $("#OrderDiscount").val().replace(',', '.');
        if(!isNaN(cash) && cash.length != 0) {
            balance = parseFloat(balance - cash );
        }
        if(!isNaN(check) && check.length != 0){
            balance = parseFloat(balance - check );
        }
        if(!isNaN(card) && card.length != 0){
            balance = parseFloat(balance - card );
        }
        if(!isNaN(discount) && discount.length != 0){
            balance = parseFloat(balance - discount);
        }

        $("#OrderBalance").innerHTML = balance.toFixed(2);
    };


    $(".checkbox").change(function(){
        toggleAmountPaid();
    });

    function toggleAmountPaid(){
        if($('#OrderPaymentMethodDi').is(':checked')) {
            $("#amount_paid_cash").show();
        } else {
            $("#amount_paid_cash").hide();
        }
        if($('#OrderPaymentMethodCh').is(':checked')) {
            $("#amount_paid_check").show();
        } else {
            $("#amount_paid_check").hide();
        }
        if($('#OrderPaymentMethodCt').is(':checked')) {
            $("#amount_paid_card").show();
        } else {
            $("#amount_paid_card").hide();
        }
    }
});

