json.array!(@componentes) do |componente|
  json.extract! componente, :id, :id_componente, :nombre, :ppp, :descripcion, :cantidad_minima, :codigo_interno
  json.url componente_url(componente, format: :json)
end
