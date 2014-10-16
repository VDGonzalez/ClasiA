class DptoMendoza < ActiveRecord::Base
	has_many :usuarios, dependent: :destroy
	has_many :agencias, dependent: :destroy
end
