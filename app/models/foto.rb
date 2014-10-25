class Foto < ActiveRecord::Base
  belongs_to :vehiculo

  has_attached_file :imagen, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/missing.jpg"
  validates_attachment_content_type :imagen, :content_type => /\Aimage\/.*\Z/
end
