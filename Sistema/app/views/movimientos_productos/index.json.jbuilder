json.array!(@movimientos_productos) do |movimiento_producto|
  json.extract! movimiento_producto, :id, :deposito_id, :producto_terminado_id, :tipo_de_movimiento_id, :fecha, :cantidad_transferida
  json.url movimiento_producto_url(movimiento_producto, format: :json)
end
