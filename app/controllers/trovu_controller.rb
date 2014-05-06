class TrovuController < ApplicationController
  respond_to :html, :js
  def index
  end

  def alCen
    #IMPLEMENTAR EL QUERY! PINGU! :(
  	#@empresas = SubCategory.find_by(nombre: 'Almuerzo-Cena').category.empresas
    @empresas = Empresa.all
  end

  def desMer
  	@empresas = Empresa.all
  end

  def masCercanos
  	@empresas = Empresa.all
  end

  def top10
  	@empresas = Empresa.all
  end

  def destacados
  	@empresas = Empresa.all
  end

  def nuevos
  	@empresas = Empresa.all
  end

  def search
  	word = params[:word]
    word = word.downcase
    @empresas = Empresa.find(:all, :conditions => ["nombre LIKE ?", prepare(word)])
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

  private def prepare(word)

    res = "%"

    word.each_char do |k|
      res = res + k + '%'
    end

    return res
  end


end