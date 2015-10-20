class CreateTrasladosProductosTerminados < ActiveRecord::Migration
  def change
    create_table :traslados_productos_terminados do |t|
      t.references :orden_de_produccion, index: true
      t.references :deposito, index: true
      t.references :deposito, index: true
      t.integer :nro_formulario
      t.date :fecha

      t.timestamps
    end
  end
end
