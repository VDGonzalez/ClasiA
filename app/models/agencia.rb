class Agencia < ActiveRecord::Base
  belongs_to :dpto_mendoza
  has_many :vehiculos, dependent: :destroy

  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/missing.jpg"
  validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/
end
