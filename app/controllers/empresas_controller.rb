class EmpresasController < ApplicationController
	layout "admin"
#	http_basic_authenticate_with name: "trovuAdmin", password: "trovu"
	def new
		@f
	end
end
