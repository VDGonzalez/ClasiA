class Marca < ActiveRecord::Base
	has_many :vehiculos, dependent: :destroy
end
