class CreateComponentes < ActiveRecord::Migration
  def change
    create_table :componentes do |t|
      t.integer :id_componente
      t.string :nombre
      t.string :descripcion
      t.text :ppp
      t.integer :cantidad_minima
      t.text :codigo_interno

      t.timestamps
    end
  end
end
