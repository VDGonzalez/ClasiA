class Segmento < ActiveRecord::Base
	has_many :caracteristicas, dependent: :destroy
end
