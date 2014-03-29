class Categorization < ActiveRecord::Base
  belongs_to :empresa
  belongs_to :sucursal
  belongs_to :sub_category
end
