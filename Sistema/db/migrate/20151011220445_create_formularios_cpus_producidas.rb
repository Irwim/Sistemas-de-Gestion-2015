class CreateFormulariosCpusProducidas < ActiveRecord::Migration
  def change
    create_table :formularios_cpus_producidas do |t|
      t.date :orden
      t.integer :numero_de_formulario

      t.timestamps
    end
  end
end
