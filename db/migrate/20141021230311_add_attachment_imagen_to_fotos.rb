class AddAttachmentImagenToFotos < ActiveRecord::Migration
  def self.up
    change_table :fotos do |t|
      t.attachment :imagen
    end
  end

  def self.down
    remove_attachment :fotos, :imagen
  end
end
