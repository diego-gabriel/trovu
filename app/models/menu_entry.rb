class MenuEntry < ActiveRecord::Base
  belongs_to :sucursal
  validates_presence_of :sucursal
end
