class PaymentsController < ApplicationController
	layout "admin"
	def edit
		@payment = Payment.find(params[:id])
	end
	def update
		payment = Payment.find(params[:id])
		payment_type = PaymentType.find(params[:payment][:payment_type])

		payment.update(payment_type: payment_type, payed: params[:payment][:payed])

		redirect_to empresa_trovu_suscriptions_path(payment.payable.empresa, payment.payable)
	end

end
	