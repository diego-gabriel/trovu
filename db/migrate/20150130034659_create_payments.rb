class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
    	t.references :payable, polimorphic: true, index: true
    	t.references :payment_status, index: true
    	t.integer :amount
      t.timestamps
    end
  end
end
