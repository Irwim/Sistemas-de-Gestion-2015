class CreatePedidosDeComprasComponentes < ActiveRecord::Migration
  def change
    create_table :pedidos_de_compras_componentes do |t|
      t.date :fecha
      t.date :baja
      t.integer :nro_formulario
      t.string :estado

      t.timestamps
    end
  end
end
