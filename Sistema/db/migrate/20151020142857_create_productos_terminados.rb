class CreateProductosTerminados < ActiveRecord::Migration
  def change
    create_table :productos_terminados do |t|
      t.references :modelo, index: true
      t.references :categoria_producto, index: true
      t.string :codigo
      t.integer :cantidad_minima
      t.text :descripcion

      t.timestamps
    end
  end
end
