class Vehiculo < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :agencia
  belongs_to :segmento
  belongs_to :dpto_mendoza
  belongs_to :marca
  belongs_to :modelo

  validates_presence_of   :dpto_mendoza_id
end
