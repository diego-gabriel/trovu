class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :nombre
      t.integer :precioRelativo
      t.string :logotipo
      t.integer :estrellas
      t.string :codigoEmpresa
      t.string :paginaWeb

      t.timestamps
    end
  end
end
