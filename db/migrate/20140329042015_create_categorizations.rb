class CreateCategorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |t|
      t.references :sucursal, index: true
      t.references :sub_category, index: true
      t.timestamps
    end
  end
end
