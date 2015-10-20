class CreateSolicitudesComponentes < ActiveRecord::Migration
  def change
    create_table :solicitudes_componentes do |t|
      t.references :deposito, index: true
      t.references :deposito, index: true
      t.date :fecha
      t.integer :nro_formulario
      t.date :fecha_baja
      t.boolean :estado

      t.timestamps
    end
  end
end
