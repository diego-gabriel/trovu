class CreatePaymentStatuses < ActiveRecord::Migration
  def change
    create_table :payment_statuses do |t|
      t.boolean :payed
      t.timestamps
    end
  end
end
