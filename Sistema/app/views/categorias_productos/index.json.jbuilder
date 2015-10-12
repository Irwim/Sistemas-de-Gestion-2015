json.array!(@categorias_productos) do |categorias_producto|
  json.extract! categorias_producto, :id, :nombre, :descripcion
  json.url categorias_producto_url(categorias_producto, format: :json)
end
