json.array!(@ordenes_de_produccion_detalles) do |orden_de_produccion_detalle|
  json.extract! orden_de_produccion_detalle, :id, :orden_de_produccion_id, :producto_terminado_id, :cantidad_solicitada, :cantidad_terminada
  json.url orden_de_produccion_detalle_url(orden_de_produccion_detalle, format: :json)
end
