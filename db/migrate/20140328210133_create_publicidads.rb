class CreatePublicidads < ActiveRecord::Migration
  def change
    create_table :publicidads do |t|
      t.date :fechaInicio
      t.text :descripcion
      t.decimal :precio
      t.string :idPublicidad
      t.string :imagen
      t.integer :periodo

      t.timestamps
    end
  end
end
