class Payment < ActiveRecord::Base
	belongs_to :payable, polymorphic: true
	after_update :verify_payed

	private
	def verify_payed
		if self.payed_changed? && self.payed = true
			self.payment_date = Date.today
			self.save
		end
	end
end
