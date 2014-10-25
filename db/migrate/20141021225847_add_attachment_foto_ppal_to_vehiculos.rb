class AddAttachmentFotoPpalToVehiculos < ActiveRecord::Migration
  def self.up
    change_table :vehiculos do |t|
      t.attachment :foto_ppal
    end
  end

  def self.down
    remove_attachment :vehiculos, :foto_ppal
  end
end
