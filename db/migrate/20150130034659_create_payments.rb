class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
    	t.references :payable, polymorphic: true, index: true
    	t.references :payment_type, index: true
    	t.boolean :payed, default: false
    	t.date :payment_date
      t.timestamps
    end
  end
end
