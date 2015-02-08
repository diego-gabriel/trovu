class CreatePaymentTypes < ActiveRecord::Migration
  def change
    create_table :payment_types do |t|
      t.integer :amount
      t.string :name
      t.string :description
      t.timestamps
    end
  end
end
