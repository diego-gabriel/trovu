class CreateTurnos < ActiveRecord::Migration
  def change
    create_table :turnos do |t|
      t.string :dia
      t.integer :horaInicio
      t.integer :horaFin
      t.references :sucursal, index: true
      
      t.timestamps
    end
  end
end
