class CreateCategoriasComponentes < ActiveRecord::Migration
  def change
    create_table :categorias_componentes do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
