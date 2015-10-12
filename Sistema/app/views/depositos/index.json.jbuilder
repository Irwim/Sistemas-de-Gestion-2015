json.array!(@depositos) do |deposito|
  json.extract! deposito, :id, :descripcion
  json.url deposito_url(deposito, format: :json)
end
