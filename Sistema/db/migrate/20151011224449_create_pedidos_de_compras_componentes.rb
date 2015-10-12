class CreatePedidosDeComprasComponentes < ActiveRecord::Migration
  def change
    create_table :pedidos_de_compras_componentes do |t|
      t.date :fecha
      t.date :baja_de_pedido
      t.boolean :estado_de_pedido
      t.integer :numero_de_formulario

      t.timestamps
    end
  end
end
