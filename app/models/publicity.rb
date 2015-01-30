class Publicity < ActiveRecord::Base
  belongs_to :empresa
  has_one :payment, as: :payable
end
