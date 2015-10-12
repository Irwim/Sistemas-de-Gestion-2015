json.array!(@pedidos_de_compras_de_componentes_detalles) do |pedidos_de_compras_de_componentes_detalle|
  json.extract! pedidos_de_compras_de_componentes_detalle, :id, :cantidad_solicitada
  json.url pedidos_de_compras_de_componentes_detalle_url(pedidos_de_compras_de_componentes_detalle, format: :json)
end
