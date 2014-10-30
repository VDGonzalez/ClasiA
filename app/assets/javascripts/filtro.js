$( document ).ready(function() {
	var precioMax_query = $('#precioMax_query').val();
	var max_val;
	
	if (precioMax_query) {
		max_val = precioMax_query;
	}else {
		max_val = 300000;
	}

	$('.span2').slider({
		min: 0,
		max: max_val,
		step: 100,
		value: [0, max_val],
		handle: 'square'
	});
	$('.span2').slider().on('slideStop', function(ev){
		var slide_val = $('.tooltip-inner').html();
		var slide_array = slide_val.split(" : ");
		$( "#precioMin" ).val( slide_array[0] );
		$( "#precioMax" ).val( slide_array[1] );
	});

	// Inicilizar Array de Equipamiento
		var array_combustible = [];
		var combustible = $('#vehiculo_combustible').val();
		if (combustible) {
			array_combustible = combustible.split(',');
			$('.array_combustible').each(function(){
				var input_init = $(this).val();
				var exist_init = $.inArray(input_init, array_combustible);
				if ( exist_init != -1) {
					$(this).attr('checked', true);
				}
			});
		}
	// Eventos Equipamiento
		$('.array_combustible').click(function (){
			var input_val = $(this).val();
			var exist = $.inArray(input_val, array_combustible);
			if ( exist == -1) {
				array_combustible.push(input_val);
			}else{
				array_combustible = jQuery.grep(array_combustible, function(value) {
					return value != input_val;
				});
			}
			$('#vehiculo_combustible').val(array_combustible);
		});

	$('#eliminar_todos').click(function(){
		$('.form-control').val('');
		$('#new_vehiculo').submit();
	});
});