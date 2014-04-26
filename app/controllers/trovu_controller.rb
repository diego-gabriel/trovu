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
    word = word.downcase
    @empresas = Empresa.all.find_all{|e| lDistance(e.nombre, word) <= 3}
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

  private def lDistance(cad, word)
    require 'matrix'
    res = 0;
    dist = []

    for i in 0..(cad.size)
      dist[i] = []
      for j in 0..(word.size)
        dist[i][j] = 0
      end
    end
    
    for i in 0..(cad.size)
      dist[i] = []
      dist[i][0] = i
    end

    for j in 0..(word.size)
      dist[0][j] = j
    end

    for i in 0..(cad.size)
      for j in 0..(word.size)
        cost = 1
        if cad[i] == word[j] then cost = 0
        end
        dist[i][j] = [dist[i-1][j] +1,
                         dist[i][j-1] +1,
                         dist[i-1][j-1]+cost].min
      end      
    end

    res = dist[cad.size][word.size]

    return res
  end

end