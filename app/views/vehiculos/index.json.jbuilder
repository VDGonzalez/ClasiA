json.array!(@vehiculos) do |vehiculo|
  json.extract! vehiculo, :id, :usuario_id, :agencia_id, :segmento_id, :dpto_mendoza_id, :marca_id, :modelo_id, :modeloCustom, :titulo, :anio, :kilometraje, :combustible, :precio, :condicion, :comentario, :destacado, :principal, :denunciado, :alta, :equipamiento, :seguridad, :exterior
  json.url vehiculo_url(vehiculo, format: :json)
end
