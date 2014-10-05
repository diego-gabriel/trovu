class MenuEntriesController < ApplicationController
	respond_to :html, :js
	layout "admin"

	def index
		@empresa = Empresa.find(params[:empresa_id])
		@sucursal = Sucursal.find(params[:sucursal_id])		
	end

	def new
		@empresa = Empresa.find(params[:empresa_id])
		@sucursal = Sucursal.find(params[:sucursal_id])
	end

	def create
		sucursal = Sucursal.find(params[:sucursal_id])
		@entry = MenuEntry.new(menu_entry_params)
		@entry.sucursal = sucursal
		@entry.save

		redirect_to 
	end

	def edit
		@entry = MenuEntry.find(params[:id]);
	end

	

	def destroy
		@entry = MenuEntry.find(params[:id])
		@entry.destroy

		redirect_to edit_empresa_sucursal_path(params[:empresa_id], params[:sucursal_id])
	end

	private 
	def menu_entry_params
		params.require(:menu_entry).permit(:plato, :descripcion, :precio, :sucursal_id)
		
	end
end