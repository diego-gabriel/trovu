class CreateTelefonos < ActiveRecord::Migration
  def change
    create_table :telefonos do |t|
      t.integer :numero
      t.integer :sucursal_id

      t.timestamps
    end
  end
end
