class SubCategoria < ActiveRecord::Base
	belongs_to :empresa
	belongs_to :categoria
end
