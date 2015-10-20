json.array!(@pedidos_componentes_detalles) do |pedido_componente_detalle|
  json.extract! pedido_componente_detalle, :id, :pedido_de_compra_componente_id, :componente_id, :cantidad_solicitada
  json.url pedido_componente_detalle_url(pedido_componente_detalle, format: :json)
end
