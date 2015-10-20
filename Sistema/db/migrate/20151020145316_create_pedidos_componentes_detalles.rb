class CreatePedidosComponentesDetalles < ActiveRecord::Migration
  def change
    create_table :pedidos_componentes_detalles do |t|
      t.references :pedido_de_compra_componente, index: true
      t.references :componente, index: true
      t.integer :cantidad_solicitada

      t.timestamps
    end
  end
end
