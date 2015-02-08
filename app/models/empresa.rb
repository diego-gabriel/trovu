class Empresa < ActiveRecord::Base
	has_many :sucursals
	has_many :publicidads
	has_many :trovu_suscriptions
	validates_uniqueness_of :nombre 
  	has_attached_file :logotipo, :styles => { :medium => "300x300>", :mini => "30x30>" },
	:url  => "/assets/pictures/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/pictures/:id/:style/:basename.:extension",
    :default_url => '/assets/defaults/rest/restaurant-default_:style.png'
    validates_attachment_size :logotipo, :less_than => 1.megabytes
  	validates_attachment_content_type :logotipo, :content_type => /\Aimage\/.*\Z/

    after_create :check_suscribed
    after_update :check_pays

    private
    def check_pays
      if (self.pays_changed? && self.pays == true)
        add_suscription
      end
    end

    private
    def check_suscribed
      if (self.pays)
        add_suscription
      end
    end

    private
    def add_suscription
        
        expireDate = Date.today + 1.year
        suscription = TrovuSuscription.create(empresa: self, expires_on: expireDate);
    end

  	public
  	def expiration_date
  		expDate = nil

  		if self.pays
  			expDate = trovu_suscriptions.last.expires_on
  		else
  			expDate = Date.today - 1.day
  		end
  		return expDate
  	end

  	public 
  	def on_date
  		return self.expiration_date >= Date.today
  	end

    public
    def count_a_view
      lastCount = self.visit_count
      if (lastCount == nil)
        lastCount = 0
      end
      self.visit_count = lastCount + 1
      self.save
    end
    public
    def get_logo
      logo = nil
      if self.pays
        logo = self.logotipo
      end
      return logo
    end

    public
    def debt_payments

      payments = []
      TrovuSuscription.includes(:payment).joins(:payment).where(empresa: self, payments: {payed: false}).find_each do |aSuscription|
        payments<<aSuscription.payment
      end

      payments
    end

    public
    def has_any_debt
      return debt_payments.size > 0
    end
end