class AddStockprodToProduits < ActiveRecord::Migration
  def change
    add_column :produits, :stockprod, :integer
  end
end
