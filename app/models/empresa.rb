class Empresa < ActiveRecord::Base
	has_many :sucursals
	has_many :publicidads
	validates_uniqueness_of :nombre 
  	has_attached_file :logotipo, :styles => { :medium => "300x300>", :mini => "30x30>" },
	:url  => "/assets/pictures/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/pictures/:id/:style/:basename.:extension",
    :default_url => '/assets/defaults/rest/restaurant-default_:style.png'
    validates_attachment_size :logotipo, :less_than => 1.megabytes
  	validates_attachment_content_type :logotipo, :content_type => /\Aimage\/.*\Z/
end