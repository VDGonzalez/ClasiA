class Segmento < ActiveRecord::Base
	has_many :caracteristicas, dependent: :destroy
	has_many :vehiculos, dependent: :destroy
end
