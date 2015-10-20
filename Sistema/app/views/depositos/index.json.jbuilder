json.array!(@depositos) do |deposito|
  json.extract! deposito, :id, :tipo_de_deposito, :descripcion
  json.url deposito_url(deposito, format: :json)
end
