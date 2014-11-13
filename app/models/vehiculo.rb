class Vehiculo < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :agencia
  belongs_to :segmento
  belongs_to :dpto_mendoza
  belongs_to :marca
  belongs_to :modelo
  has_many :fotos, dependent: :destroy
  accepts_nested_attributes_for :fotos, :reject_if => :all_blank, :allow_destroy => true

  validates_presence_of   :dpto_mendoza_id
  # validates_presence_of   :titulo
  validates_presence_of   :marca
  validates_presence_of   :modeloCustom
  validates_presence_of   :anio
  validates_presence_of   :precio
  validates_presence_of   :combustible
  validates_presence_of   :kilometraje
  validates_presence_of   :condicion
  
  # HACER: Ver validaciones de imagenes con paperclip, y realizar validaciones que faltan, como la regex para el modelo del vehículo
  # HACER: Acordar cuales son las validaciones obligatorias en el primer paso, y realizar seeds para poblar la db

  has_attached_file :foto_ppal, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/missing.jpg"
  validates_attachment_content_type :foto_ppal, :content_type => /\Aimage\/.*\Z/
end
