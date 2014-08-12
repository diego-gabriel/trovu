class SucursalsController < ApplicationController
	layout "admin"
	def edit
		@sucursal = Sucursal.find(params[:id]);
		@sucursal_id = params[:id];
	end

	def update
		sucursal = Sucursal.find(params[:id])
		sucursal.update(sucursal_params)
		redirect_to sucursal.empresa
	end

	private
	def sucursal_params
		params.require(:sucursal).permit(:direccion, :latitud, :longitud)
	end
end
