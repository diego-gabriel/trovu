class CreateSubCategories < ActiveRecord::Migration
  def change
    create_table :sub_categories do |t|
      t.string :nombre
      t.references :category, index: true

      t.timestamps
    end
  end
end
