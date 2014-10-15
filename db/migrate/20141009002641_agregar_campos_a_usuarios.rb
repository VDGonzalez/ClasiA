class AgregarCamposAUsuarios < ActiveRecord::Migration
  def change
  	add_column :usuarios, :nombre, :string
	add_column :usuarios, :apellido, :string
	add_column :usuarios, :telefono, :string
	add_column :usuarios, :telefono2, :string
	add_column :usuarios, :alta, :boolean, :default => true
  end
end
