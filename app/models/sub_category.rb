class SubCategory < ActiveRecord::Base
  belongs_to :category
  has_many :categorizations;
  has_many :sucursals :through => :categorizations
end
