class CreateProductosTerminados < ActiveRecord::Migration
  def change
    create_table :productos_terminados do |t|
      t.string :nombre
      t.string :codigo
      t.string :descripcion
      t.integer :cantidad_minima

      t.timestamps
    end
  end
end
