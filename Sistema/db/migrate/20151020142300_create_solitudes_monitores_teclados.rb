class CreateSolitudesMonitoresTeclados < ActiveRecord::Migration
  def change
    create_table :solitudes_monitores_teclados do |t|
      t.references :deposito, index: true
      t.references :deposito, index: true
      t.date :fecha
      t.integer :nro_formulario

      t.timestamps
    end
  end
end
