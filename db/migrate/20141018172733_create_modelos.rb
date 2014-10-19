class CreateModelos < ActiveRecord::Migration
  def change
    create_table :modelos do |t|
      t.references :marca, index: true
      t.string :nombre

      t.timestamps
    end
  end
end
