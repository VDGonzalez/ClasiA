class CambiarTipoDeDatoTelefono < ActiveRecord::Migration
  def up
    change_table :agencia do |t|
      t.change :telefono, :string
    end
  end

  def down
    change_table :agencia do |t|
      t.change :telefono, :integer
    end
  end
end
