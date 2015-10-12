class CreateFormulariosCpusProducidasDetalles < ActiveRecord::Migration
  def change
    create_table :formularios_cpus_producidas_detalles do |t|
      t.integer :cantidad_solicitada
      t.integer :cantidad_terminada

      t.timestamps
    end
  end
end
