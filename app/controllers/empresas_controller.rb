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

		redirect_to controller: "admin", action: "index"
	end

	def show
		@empresa = Empresa.find(params[:id])
	end	

	def edit
		@empresa = Empresa.find(params[:id])	
		@f
	end	

	def destroy

		@empresa = Empresa.find(params[:id])
		@empresa.destroy
		redirect_to controller: "admin", action: "index"
	end

	private 
	def empresa_params
		params.require(:empresa).permit(:nombre, :direccion, :paginaWeb, :facebook, :twitter, :logotipo, :precioRelativo)
	end

end
