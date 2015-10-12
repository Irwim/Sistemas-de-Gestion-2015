json.array!(@solicitudes_detalles) do |solicitudes_detalle|
  json.extract! solicitudes_detalle, :id, :cantidad_solicitada, :cantidad_entregada
  json.url solicitudes_detalle_url(solicitudes_detalle, format: :json)
end
