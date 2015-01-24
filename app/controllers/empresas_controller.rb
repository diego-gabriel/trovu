class EmpresasController < ApplicationController
	layout "admin"
#	http_basic_authenticate_with name: "trovuAdmin", password: "trovu"
	def new
		@f
	end
	def create
		empresa = Empresa.new(empresa_params)
		empresa.save

		sucursal = Sucursal.new(direccion: params[:empresa][:direccion], 
								latitud: params[:empresa][:latitud],
								longitud: params[:empresa][:longitud],
								empresa: empresa)
		sucursal.save
		expireDate = Date.today + 1.year
		suscription = TrovuSuscription.create(empresa: empresa, expires_on: expireDate);
		redirect_to controller: "admin", action: "index"
	end

	def show
		@empresa = Empresa.find(params[:id])
	end	

	def edit
		@empresa = Empresa.find(params[:id])	
		@f
	end	

	def update
		empresa = Empresa.find(params[:id])
		empresa.update(empresa_params)
		empresa.sucursals[0].update(direccion: params[:empresa][:direccion])
		redirect_to empresa
	end

	def destroy

		@empresa = Empresa.find(params[:id])
		@empresa.destroy
		redirect_to controller: "admin", action: "index"
	end

	def suscriptions
		@empresa = Empresa.find(params[:empresa_id])
		@suscriptions = @empresa.trovu_suscriptions
	end

	def count_a_view	
		empresa = Empresa.find(params[:empresa_id])
		empresa.count_a_view
	end

	private 
	def empresa_params
		params.require(:empresa).permit(:nombre, :direccion, :paginaWeb, :facebook, :twitter, :logotipo, :precioRelativo, :estrellas, :pays)
	end

end
