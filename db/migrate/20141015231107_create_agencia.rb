class CreateAgencia < ActiveRecord::Migration
  def change
    create_table :agencia do |t|
      t.string :nombre
      t.references :dpto_mendoza, index: true
      t.string :direccion
      t.integer :telefono
      t.string :email
      t.string :web
      t.float :latitud
      t.float :longitud
      t.boolean :alta

      t.timestamps
    end
  end
end
