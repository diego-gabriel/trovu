class CreateSucursals < ActiveRecord::Migration
  def change
    create_table :sucursals do |t|
      t.integer :empresa_id
      t.integer :numero

      t.timestamps
    end
  end
end
