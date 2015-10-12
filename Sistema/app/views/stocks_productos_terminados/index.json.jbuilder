json.array!(@stocks_productos_terminados) do |stocks_productos_terminado|
  json.extract! stocks_productos_terminado, :id, :cantidad_disponible
  json.url stocks_productos_terminado_url(stocks_productos_terminado, format: :json)
end
