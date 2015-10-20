json.array!(@productos_terminados) do |producto_terminado|
  json.extract! producto_terminado, :id, :modelo_id, :categoria_producto_id, :codigo, :cantidad_minima, :descripcion
  json.url producto_terminado_url(producto_terminado, format: :json)
end
