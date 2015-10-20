json.array!(@stocks_productos_terminados) do |stock_producto_terminado|
  json.extract! stock_producto_terminado, :id, :deposito_id, :producto_terminado_id, :cantidad_disponible
  json.url stock_producto_terminado_url(stock_producto_terminado, format: :json)
end
