class TrovuSuscriptionsController < ApplicationController
	layout "admin"
	def index
		@empresa = Empresa.find(params[:empresa_id])
		@suscriptions = @empresa.trovu_suscriptions
	end
end
