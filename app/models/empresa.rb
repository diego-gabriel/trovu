class Empresa < ActiveRecord::Base
	has_many :sucursals
	has_many :publicidads
end