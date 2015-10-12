json.array!(@categorias_componentes) do |categorias_componente|
  json.extract! categorias_componente, :id, :nombre, :descripcion
  json.url categorias_componente_url(categorias_componente, format: :json)
end
