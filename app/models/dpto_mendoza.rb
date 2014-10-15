class DptoMendoza < ActiveRecord::Base
	has_many :usuarios, dependent: :destroy
end
