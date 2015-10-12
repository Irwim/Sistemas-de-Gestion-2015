json.array!(@movimientos_productos) do |movimientos_producto|
  json.extract! movimientos_producto, :id, :fecha, :cantidad_transferida
  json.url movimientos_producto_url(movimientos_producto, format: :json)
end
