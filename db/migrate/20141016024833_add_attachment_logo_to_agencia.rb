class AddAttachmentLogoToAgencia < ActiveRecord::Migration
  def self.up
    change_table :agencia do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :agencia, :logo
  end
end
