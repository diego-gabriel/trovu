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
  	word = params[:word]
    @empresas = Empresa.all
  	@lat = -17.38533
  	@lng = -66.15442
  end

  def conocenos
  end

  def legal
  end
  def contactanos
  end
  def faq
  end
  def locales
  end

end
