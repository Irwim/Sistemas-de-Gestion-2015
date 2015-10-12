class CreateTrasladoDetalles < ActiveRecord::Migration
  def change
    create_table :traslado_detalles do |t|
      t.integer :cantidad_terminada

      t.timestamps
    end
  end
end
