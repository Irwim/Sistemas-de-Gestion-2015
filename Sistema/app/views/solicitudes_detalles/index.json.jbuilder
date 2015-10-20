json.array!(@solicitudes_detalles) do |solicitud_detalle|
  json.extract! solicitud_detalle, :id, :solicitud_monitor_teclado_id, :componente_id, :cantidad_solicitada, :cantidad_entregada
  json.url solicitud_detalle_url(solicitud_detalle, format: :json)
end
