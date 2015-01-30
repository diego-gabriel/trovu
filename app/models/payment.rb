class Payment < ActiveRecord::Base
	has_one :payment_status
	belongs_to :payable, polimorphic: true
end
