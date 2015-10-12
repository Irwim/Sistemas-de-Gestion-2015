json.array!(@tipos_de_depositos) do |tipos_de_deposito|
  json.extract! tipos_de_deposito, :id, :nombre
  json.url tipos_de_deposito_url(tipos_de_deposito, format: :json)
end
