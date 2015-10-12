json.array!(@formularios_cpus_producidas) do |formularios_cpus_producida|
  json.extract! formularios_cpus_producida, :id, :orden, :numero_de_formulario
  json.url formularios_cpus_producida_url(formularios_cpus_producida, format: :json)
end
