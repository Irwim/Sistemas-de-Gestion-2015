json.array!(@categorias_productos) do |categoria_producto|
  json.extract! categoria_producto, :id, :nombre, :descripcion
  json.url categoria_producto_url(categoria_producto, format: :json)
end
