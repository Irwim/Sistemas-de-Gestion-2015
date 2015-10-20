json.array!(@stocks_componentes) do |stock_componente|
  json.extract! stock_componente, :id, :deposito_id, :componente_id, :cantidad_disponible
  json.url stock_componente_url(stock_componente, format: :json)
end
