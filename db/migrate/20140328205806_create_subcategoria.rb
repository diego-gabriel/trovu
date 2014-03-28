class CreateSubcategoria < ActiveRecord::Migration
  def change
    create_table :subcategoria do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
