json.array!(@productos_terminados) do |productos_terminado|
  json.extract! productos_terminado, :id, :nombre, :codigo, :descripcion, :cantidad_minima
  json.url productos_terminado_url(productos_terminado, format: :json)
end
