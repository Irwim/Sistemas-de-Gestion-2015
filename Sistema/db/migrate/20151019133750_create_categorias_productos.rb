class CreateCategoriasProductos < ActiveRecord::Migration
  def change
    create_table :categorias_productos do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
