class CreateTelefonos < ActiveRecord::Migration
  def change
    create_table :telefonos do |t|
      t.integer :numero
      t.references :sucursal, index: true
      
      t.timestamps
    end
  end
end
