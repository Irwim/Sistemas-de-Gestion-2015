json.array!(@movimientos_componentes) do |movimientos_componente|
  json.extract! movimientos_componente, :id, :fecha, :cantidad_transferida
  json.url movimientos_componente_url(movimientos_componente, format: :json)
end
