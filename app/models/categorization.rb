class Categorization < ActiveRecord::Base
  belongs_to :sucursal
  belongs_to :sub_category
end
