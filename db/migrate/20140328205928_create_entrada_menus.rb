class CreateEntradaMenus < ActiveRecord::Migration
  def change
    create_table :entrada_menus do |t|
      t.string :plato
      t.text :descripcion
      t.decimal :precio

      t.timestamps
    end
  end
end
