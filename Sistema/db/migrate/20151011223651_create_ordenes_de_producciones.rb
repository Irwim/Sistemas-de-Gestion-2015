class CreateOrdenesDeProducciones < ActiveRecord::Migration
  def change
    create_table :ordenes_de_producciones do |t|
      t.date :fecha
      t.integer :numero_de_formulario

      t.timestamps
    end
  end
end
