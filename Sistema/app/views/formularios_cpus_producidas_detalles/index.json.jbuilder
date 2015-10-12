json.array!(@formularios_cpus_producidas_detalles) do |formularios_cpus_producidas_detalle|
  json.extract! formularios_cpus_producidas_detalle, :id, :cantidad_solicitada, :cantidad_terminada
  json.url formularios_cpus_producidas_detalle_url(formularios_cpus_producidas_detalle, format: :json)
end
