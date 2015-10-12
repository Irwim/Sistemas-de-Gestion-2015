json.array!(@solicitudes_componentes_detalles) do |solicitudes_componentes_detalle|
  json.extract! solicitudes_componentes_detalle, :id, :cantidad_solicitada, :cantidad_entregada
  json.url solicitudes_componentes_detalle_url(solicitudes_componentes_detalle, format: :json)
end
