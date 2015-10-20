class CreateOrdenesDeProduccion < ActiveRecord::Migration
  def change
    create_table :ordenes_de_produccion do |t|
      t.date :fecha
      t.integer :nro_formulario

      t.timestamps
    end
  end
end
