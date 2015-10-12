class CreatePedidosDeComprasDeComponentesDetalles < ActiveRecord::Migration
  def change
    create_table :pedidos_de_compras_de_componentes_detalles do |t|
      t.integer :cantidad_solicitada

      t.timestamps
    end
  end
end
