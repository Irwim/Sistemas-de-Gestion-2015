class CreateDepositos < ActiveRecord::Migration
  def change
    create_table :depositos do |t|
      t.integer :tipo_de_deposito
      t.text :descripcion

      t.timestamps
    end
  end
end
