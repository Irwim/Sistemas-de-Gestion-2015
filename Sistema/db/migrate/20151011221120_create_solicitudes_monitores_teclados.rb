class CreateSolicitudesMonitoresTeclados < ActiveRecord::Migration
  def change
    create_table :solicitudes_monitores_teclados do |t|
      t.date :fecha
      t.integer :numero_de_formulario

      t.timestamps
    end
  end
end
