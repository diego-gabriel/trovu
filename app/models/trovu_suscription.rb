class TrovuSuscription < ActiveRecord::Base
  belongs_to :empresa
  has_one :payment, as: :payable
  after_create :add_pendent_pay

  private 
  def add_pendent_pay
  	Payment.create(payable: self)
  end
end
