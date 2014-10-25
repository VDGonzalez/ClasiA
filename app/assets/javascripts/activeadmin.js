$(document).ready(function(){

// Inicilizar Array de Equipamiento
		var array_equipamiento = [];
		var equipamiento = $('#vehiculo_equipamiento').val();
		if (equipamiento) {
			array_equipamiento = equipamiento.split(',');
			$('.array_equipamiento').each(function(){
				var input_init = $(this).val();
				var exist_init = $.inArray(input_init, array_equipamiento);
				if ( exist_init != -1) {
					$(this).attr('checked', true);
				}
			});
		}

	// Inicilizar Array de Seguridad
		var array_seguridad = [];
		var seguridad = $('#vehiculo_seguridad').val();
		if (seguridad) {
			array_seguridad = seguridad.split(',');
			$('.array_seguridad').each(function(){
				var input_init = $(this).val();
				var exist_init = $.inArray(input_init, array_seguridad);
				if ( exist_init != -1) {
					$(this).attr('checked', true);
				}
			});
		}

	// Inicilizar Array de Exterior
		var array_exterior = [];
		var exterior = $('#vehiculo_exterior').val();
		if (exterior) {
			array_exterior = exterior.split(',');
			$('.array_exterior').each(function(){
				var input_init = $(this).val();
				var exist_init = $.inArray(input_init, array_exterior);
				if ( exist_init != -1) {
					$(this).attr('checked', true);
				}
			});
		}

	// Eventos Equipamiento
		$('.array_equipamiento').click(function (){
			var input_val = $(this).val();
			var exist = $.inArray(input_val, array_equipamiento);
			if ( exist == -1) {
				array_equipamiento.push(input_val);
			}
			else{
				array_equipamiento = jQuery.grep(array_equipamiento, function(value) {
				  return value != input_val;
				});
			}
			$('#vehiculo_equipamiento').val(array_equipamiento);
		});

	// Eventos Seguridad
		$('.array_seguridad').click(function (){
			var input_val = $(this).val();
			var exist = $.inArray(input_val, array_seguridad);
			if ( exist == -1) {
				array_seguridad.push(input_val);
			}else{
				array_seguridad = jQuery.grep(array_seguridad, function(value) {
				  return value != input_val;
				});
			}
			$('#vehiculo_seguridad').val(array_seguridad);
		});

	// Eventos Exterior
		$('.array_exterior').click(function (){
			var input_val = $(this).val();
			var exist = $.inArray(input_val, array_exterior);
			if ( exist == -1) {
				array_exterior.push(input_val);
			}else{
				array_exterior = jQuery.grep(array_exterior, function(value) {
				  return value != input_val;
				});
			}
			$('#vehiculo_exterior').val(array_exterior);
		});

});