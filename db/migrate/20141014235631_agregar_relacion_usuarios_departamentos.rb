class AgregarRelacionUsuariosDepartamentos < ActiveRecord::Migration
  def change
  	change_table :usuarios do |t|
      t.references :dpto_mendoza, index: true
    end
  end
end
