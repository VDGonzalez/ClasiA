class CreateFotos < ActiveRecord::Migration
  def change
    create_table :fotos do |t|
      t.references :vehiculo, index: true
      t.string :descripciom

      t.timestamps
    end
  end
end
