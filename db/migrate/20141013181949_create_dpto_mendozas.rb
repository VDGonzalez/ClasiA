class CreateDptoMendozas < ActiveRecord::Migration
  def change
    create_table :dpto_mendozas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
