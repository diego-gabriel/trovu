class AdminController < ApplicationController
 # http_basic_authenticate_with name: "trovuAdmin", password: "trovu"
  def index
  	@empresas = Empresa.all
  end

end
