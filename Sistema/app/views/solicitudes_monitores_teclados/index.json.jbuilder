json.array!(@solicitudes_monitores_teclados) do |solicitudes_monitores_teclado|
  json.extract! solicitudes_monitores_teclado, :id, :fecha, :numero_de_formulario
  json.url solicitudes_monitores_teclado_url(solicitudes_monitores_teclado, format: :json)
end
