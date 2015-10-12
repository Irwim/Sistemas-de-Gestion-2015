json.array!(@modelos) do |modelo|
  json.extract! modelo, :id, :nombre
  json.url modelo_url(modelo, format: :json)
end
