class TrovuController < ApplicationController
  respond_to :html, :js
  def index
  end

  def alCen
  	
  end

  def desMer
  	
  end

  def masCercanos
  	
  end

  def top10
  	
  end

  def destacados
  	
  end

  def nuevos
  	
  end

  def search
  	@cad = params[:word]

  	@lat = -17.38533
  	@lng = -66.15442
  end

end
