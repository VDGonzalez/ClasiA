class CreateCaracteristicas < ActiveRecord::Migration
  def change
    create_table :caracteristicas do |t|
      t.references :segmento, index: true
      t.string :tipo
      t.string :nombre

      t.timestamps
    end
  end
end
