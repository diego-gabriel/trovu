class Empresa < ActiveRecord::Base
	has_many :publicidads
	has_many :subCategorias
	has_many :categorias, :through => subCategoria
	has_many :sucursals
	has_many :telefonos, :through => sucursal
	has_many :direccions, :through => sucursal
	has_many :horarios, :through => sucursal
end
