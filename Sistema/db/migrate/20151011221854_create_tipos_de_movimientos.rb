class CreateTiposDeMovimientos < ActiveRecord::Migration
  def change
    create_table :tipos_de_movimientos do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
