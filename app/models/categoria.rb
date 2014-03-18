class Categoria < ActiveRecord::Base
	has_many :subCategorias
	has_many :empresas, :through => subCategoria
end
