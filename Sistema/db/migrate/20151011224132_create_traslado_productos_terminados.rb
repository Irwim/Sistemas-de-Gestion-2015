class CreateTrasladoProductosTerminados < ActiveRecord::Migration
  def change
    create_table :traslado_productos_terminados do |t|
      t.date :fecha
      t.integer :numero_de_formulario

      t.timestamps
    end
  end
end
