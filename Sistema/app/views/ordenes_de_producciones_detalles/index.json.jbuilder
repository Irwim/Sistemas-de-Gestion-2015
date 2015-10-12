json.array!(@ordenes_de_producciones_detalles) do |ordenes_de_producciones_detalle|
  json.extract! ordenes_de_producciones_detalle, :id, :cantidad_solicitada, :cantidad_terminada
  json.url ordenes_de_producciones_detalle_url(ordenes_de_producciones_detalle, format: :json)
end
