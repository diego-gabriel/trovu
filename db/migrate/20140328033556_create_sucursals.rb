class CreateSucursals < ActiveRecord::Migration
  def change
    create_table :sucursals do |t|
      t.text :direccion
      t.decimal :latitud
      t.decimal :longitud

      t.timestamps
    end
  end
end
