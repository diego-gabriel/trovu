class CreatePublicities < ActiveRecord::Migration
  def change
    create_table :publicities do |t|
      t.date :fechaInicio
      t.text :descripcion
      t.decimal :precio
      t.string :imagen
      t.integer :periodo
      t.references :empresa, index: true

      t.timestamps
    end
  end
end
