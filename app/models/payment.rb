class Payment < ActiveRecord::Base
	belongs_to :payable, polymorphic: true
	belongs_to :payment_type
	after_update :verify_payed

	private
	def type
		self.payment_type
	end

	private
	def verify_payed
		print "here!!\n\n\n---\n\n\n"
		if self.payed_changed? && self.payed == true
			self.update_column(:payment_date, Date.today)
		end
	end
end
