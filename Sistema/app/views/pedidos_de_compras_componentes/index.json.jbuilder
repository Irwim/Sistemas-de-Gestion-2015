json.array!(@pedidos_de_compras_componentes) do |pedido_de_compra_componente|
  json.extract! pedido_de_compra_componente, :id, :fecha, :baja, :nro_formulario, :estado
  json.url pedido_de_compra_componente_url(pedido_de_compra_componente, format: :json)
end
