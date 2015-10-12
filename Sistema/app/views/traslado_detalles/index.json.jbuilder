json.array!(@traslado_detalles) do |traslado_detalle|
  json.extract! traslado_detalle, :id, :cantidad_terminada
  json.url traslado_detalle_url(traslado_detalle, format: :json)
end
