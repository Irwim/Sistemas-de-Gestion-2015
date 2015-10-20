json.array!(@traslados_productos_terminados) do |traslado_producto_terminado|
  json.extract! traslado_producto_terminado, :id, :orden_de_produccion_id, :deposito_id, :deposito_id, :nro_formulario, :fecha
  json.url traslado_producto_terminado_url(traslado_producto_terminado, format: :json)
end
