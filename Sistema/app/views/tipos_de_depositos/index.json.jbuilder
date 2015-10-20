json.array!(@tipos_de_depositos) do |tipo_de_deposito|
  json.extract! tipo_de_deposito, :id, :nombre
  json.url tipo_de_deposito_url(tipo_de_deposito, format: :json)
end
