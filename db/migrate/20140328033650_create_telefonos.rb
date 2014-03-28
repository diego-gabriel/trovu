class CreateTelefonos < ActiveRecord::Migration
  def change
    create_table :telefonos do |t|
      t.integer :numero

      t.timestamps
    end
  end
end
