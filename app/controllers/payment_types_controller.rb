class PaymentTypesController < ApplicationController
	layout "admin"

	def index
		@types = PaymentType.all
	end

	def new
	end

	def create
		PaymentType.create(payment_type_params)
		redirect_to payment_types_path
	end

	private
	def payment_type_params
		params.require(:payment_type).permit(:amount, :name, :description)
	end
end
