class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :nomEmpresa

      t.timestamps
    end
  end
end
