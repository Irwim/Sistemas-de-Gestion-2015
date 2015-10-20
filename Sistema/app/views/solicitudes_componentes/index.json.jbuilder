json.array!(@solicitudes_componentes) do |solicitud_componente|
  json.extract! solicitud_componente, :id, :deposito_id, :deposito_id, :fecha, :nro_formulario, :fecha_baja, :estado
  json.url solicitud_componente_url(solicitud_componente, format: :json)
end
