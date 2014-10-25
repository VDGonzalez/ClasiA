class CreateVehiculos < ActiveRecord::Migration
  def change
    create_table :vehiculos do |t|
      t.references :usuario, index: true
      t.references :agencia, index: true
      t.references :segmento, index: true
      t.references :dpto_mendoza, index: true
      t.references :marca, index: true
      t.references :modelo, index: true
      t.string :modeloCustom
      t.string :titulo
      t.integer :anio
      t.integer :kilometraje
      t.string :combustible
      t.float :precio
      t.string :condicion
      t.text :comentario
      t.boolean :destacado
      t.boolean :principal
      t.integer :denunciado
      t.boolean :alta
      t.text :equipamiento
      t.text :seguridad
      t.text :exterior

      t.timestamps
    end
  end
end
