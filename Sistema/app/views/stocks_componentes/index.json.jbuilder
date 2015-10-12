json.array!(@stocks_componentes) do |stocks_componente|
  json.extract! stocks_componente, :id, :cantidad_disponible
  json.url stocks_componente_url(stocks_componente, format: :json)
end
