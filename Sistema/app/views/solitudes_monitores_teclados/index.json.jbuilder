json.array!(@solitudes_monitores_teclados) do |solicitud_monitor_teclado|
  json.extract! solicitud_monitor_teclado, :id, :deposito_id, :deposito_id, :fecha, :nro_formulario
  json.url solicitud_monitor_teclado_url(solicitud_monitor_teclado, format: :json)
end
