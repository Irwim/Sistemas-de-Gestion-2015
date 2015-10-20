json.array!(@movimientos_componentes) do |movimiento_componente|
  json.extract! movimiento_componente, :id, :deposito_id, :componente_id, :tipo_de_movimiento_id, :fecha, :cantidad_transferida
  json.url movimiento_componente_url(movimiento_componente, format: :json)
end
