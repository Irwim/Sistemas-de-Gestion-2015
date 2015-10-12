json.array!(@traslado_productos_terminados) do |traslado_productos_terminado|
  json.extract! traslado_productos_terminado, :id, :fecha, :numero_de_formulario
  json.url traslado_productos_terminado_url(traslado_productos_terminado, format: :json)
end
