class Sucursal < ActiveRecord::Base
	belongs_to :empresa
	has_many :telefonos
	has_one :direccion
	has_one :horario
end
