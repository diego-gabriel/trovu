class CreatePublicidads < ActiveRecord::Migration
  def change
    create_table :publicidads do |t|
      t.integer :empresa_id

      t.timestamps
    end
  end
end
