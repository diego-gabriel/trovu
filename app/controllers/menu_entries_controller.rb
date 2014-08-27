class MenuEntriesController < ApplicationController
	respond_to :html, :js

	def new
		@empresa = Empresa.find(params[:empresa_id])
		@sucursal = Sucursal.find(params[:sucursal_id])
	end

	def create
		entry = MenuEntry.create(menu_entry_params)
		redirect_to empresa_path(entry.sucursal.empresa)
	end

	private 
	def menu_entry_params
		params.require(:menu_entry).permit(:plato, :descripcion, :precio, :sucursal_id)
		
	end
end
