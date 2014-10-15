class CreateSegmentos < ActiveRecord::Migration
  def change
    create_table :segmentos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
