json.array!(@solicitudes_componentes) do |solicitudes_componente|
  json.extract! solicitudes_componente, :id, :fecha, :numero_de_formulario, :estado_de_solicitud, :baja_de_solicitud
  json.url solicitudes_componente_url(solicitudes_componente, format: :json)
end
