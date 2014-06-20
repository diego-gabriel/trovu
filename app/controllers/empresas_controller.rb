class EmpresasController < ApplicationController
	layout "admin"
#	http_basic_authenticate_with name: "trovuAdmin", password: "trovu"
	def new
		@f
	end
	def create
		empresa = Empresa.new(empresa_params)
		empresa.save
		redirect_to controller: "admin", action: "index"
	end
	private def empresa_params
		params.require(:empresa).permit(:nombre, :direccion, :paginaWeb, :facebook, :twitter)
	end
end
