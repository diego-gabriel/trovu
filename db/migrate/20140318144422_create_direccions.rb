class CreateDireccions < ActiveRecord::Migration
  def change
    create_table :direccions do |t|
      t.integer :coordenadaX
      t.integer :coordenadaY
      t.string :calle
      t.integer :sucursal_id

      t.timestamps
    end
  end
end
