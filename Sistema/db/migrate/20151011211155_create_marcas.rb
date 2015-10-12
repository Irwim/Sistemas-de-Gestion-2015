class CreateMarcas < ActiveRecord::Migration
  def change
    create_table :marcas do |t|
      t.string :nombre
      t.string :codigo

      t.timestamps
    end
  end
end
