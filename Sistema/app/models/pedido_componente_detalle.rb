class PedidoComponenteDetalle < ActiveRecord::Base
  belongs_to :pedido_de_compra_componente
  belongs_to :componente
end
