json.array!(@traslados_detalles) do |traslado_detalle|
  json.extract! traslado_detalle, :id, :traslado_producto_terminado_id, :producto_terminado_id, :cantidad_a_transferir
  json.url traslado_detalle_url(traslado_detalle, format: :json)
end
