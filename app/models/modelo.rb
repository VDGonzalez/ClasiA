class Modelo < ActiveRecord::Base
  belongs_to :marca
  has_many :vehiculos, dependent: :destroy
end
