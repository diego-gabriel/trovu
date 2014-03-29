class CreateMenuEntries < ActiveRecord::Migration
  def change
    create_table :menu_entries do |t|
      t.string :plato
      t.text :descripcion
      t.decimal :precio
      t.references :sucursal, index: true

      t.timestamps
    end
  end
end
