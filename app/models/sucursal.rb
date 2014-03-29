class Sucursal < ActiveRecord::Base
	belongs_to :empresa
	has_many :entrada_menus
	has_many :telefonos
	has_many :turnos
	has_many :categorizations
	has_many :sub_categories, :through => :categorizations
end
