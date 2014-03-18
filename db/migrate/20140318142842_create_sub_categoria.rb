class CreateSubCategoria < ActiveRecord::Migration
  def change
    create_table :sub_categoria do |t|
      t.string :nomSubcategoria
      t.integer :empresa_id
      t.integer :categoria_id

      t.timestamps
    end
  end
end
