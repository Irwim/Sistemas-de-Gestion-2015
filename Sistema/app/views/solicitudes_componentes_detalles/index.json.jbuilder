json.array!(@solicitudes_componentes_detalles) do |solicitud_componente_detalle|
  json.extract! solicitud_componente_detalle, :id, :solicitud_componente_id, :componente_id, :cantidad_solicitada, :cantidad_entregada
  json.url solicitud_componente_detalle_url(solicitud_componente_detalle, format: :json)
end
