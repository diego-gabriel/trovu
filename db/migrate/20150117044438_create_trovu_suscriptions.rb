class CreateTrovuSuscriptions < ActiveRecord::Migration
  def change
    create_table :trovu_suscriptions do |t|
      t.references :empresa, index: true
      t.date :expires_on
      t.timestamps
    end
  end
end
