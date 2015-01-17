class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :direccion
      t.string :nombre
      t.integer :precioRelativo
      t.attachment :logotipo
      t.integer :estrellas
      t.string :codigoEmpresa
      t.string :paginaWeb
      t.string :facebook
      t.string :twitter
      t.boolean :pays
      t.timestamps
    end
  end
end
