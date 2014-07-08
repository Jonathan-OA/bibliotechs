//# MOBILE # - Show/hide Sidebar
$('.btn-mobile-menu').find('a').on('click', function(){
    $('.sidebar').toggleClass('show');
});


// Show/Hide Sub-menu Sidebar
$(document).ready(function(){
    $('.sidebar').find('li.active').addClass('on').removeClass('active');;
});
$('.sidebar').find('.nav-sidebar > li > a').on('click', function(){
    var categorie = $(this).closest('li');

    if(categorie.hasClass('on')){
        categorie.removeClass('on');
    } else {
        $(this).closest('.nav-sidebar').find('li').removeClass('active').removeClass('on');
        $(this).closest('li').addClass('on');
    }
});




/*
Adapting cakePHP style to Bootstrap style
 */
$(document).ready(function(){
    // Convert ".button" style to ".btn .btn-primary" style.
    $('.button').addClass('btn btn-primary').removeClass('button');

    // FORM SUBMIT BUTTON
    $('.submit').find('input').addClass('btn btn-success');

    // FORM INPUT TEXT
    $('form').find('.input.text').addClass('form-group')
        .find('input').addClass('form-control');

    // FORM INPUT NUMBER
    $('form').find('.input.number').addClass('form-group')
        .find('input').addClass('form-control');

    // FUNCTION FORM CUSTOM INPUT
    function formCustomIconStyle(inputClass, inputIcon){
        var input = $('form').find(inputClass);
        input.each(function(){
            var inputField = $(this).closest(inputClass).find('input').addClass('form-control');
            var inputGroupStyle = '<div class="input-group"><span class="input-group-addon"><span class="glyphicon glyphicon-'+inputIcon+'"></span></span></div>';
            var input = $(this).append(inputGroupStyle);

            $(inputField).remove();
            $(this).closest(inputClass).find('.input-group').append(inputField);
        });
    }

    // FORM INPUT TEL
    formCustomIconStyle('.input.tel', 'phone');

    // FORM INPUT EMAIL
    formCustomIconStyle('.input.email', 'envelope');

    // FORM INPUT ADDRESS
    formCustomIconStyle('.input.address', 'map-marker');

    // FORM INPUT NAME
    formCustomIconStyle('.input.name', 'user');

    // FORM INPUT CNPJ
    formCustomIconStyle('.input.cnpj', 'briefcase');

    // FORM INPUT DATE WITH JQUERY UI DATAPICKER
    $.datepicker.setDefaults( $.datepicker.regional[ "pt-br" ] );
    $.datepicker.formatDate( "mm-dd-yy", new Date( 2007, 1 - 1, 26 ) );
    formCustomIconStyle('.input.datepicker', 'calendar');
    $('form').find('.input.datepicker').find('input').each(function(){
        $(this).datepicker();
    });
});

