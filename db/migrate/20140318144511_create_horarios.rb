class CreateHorarios < ActiveRecord::Migration
  def change
    create_table :horarios do |t|
      t.integer :sucursal_id

      t.timestamps
    end
  end
end
