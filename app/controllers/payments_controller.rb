class PaymentsController < ApplicationController
	layout "admin"
	def edit
		@payment = Payment.find(params[:id])

	end
end
