json.array!(@ordenes_de_producciones) do |ordenes_de_produccione|
  json.extract! ordenes_de_produccione, :id, :fecha, :numero_de_formulario
  json.url ordenes_de_produccione_url(ordenes_de_produccione, format: :json)
end
