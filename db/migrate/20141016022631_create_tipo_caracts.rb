class CreateTipoCaracts < ActiveRecord::Migration
  def change
    create_table :tipo_caracts do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
