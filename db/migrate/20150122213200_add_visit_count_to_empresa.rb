class AddVisitCountToEmpresa < ActiveRecord::Migration
  def change
    add_column :empresas, :visit_count, :integer
  end
end
