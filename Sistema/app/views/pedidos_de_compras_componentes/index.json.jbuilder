json.array!(@pedidos_de_compras_componentes) do |pedidos_de_compras_componente|
  json.extract! pedidos_de_compras_componente, :id, :fecha, :baja_de_pedido, :estado_de_pedido, :numero_de_formulario
  json.url pedidos_de_compras_componente_url(pedidos_de_compras_componente, format: :json)
end
