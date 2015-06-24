class AddDescripionprodToProduits < ActiveRecord::Migration
  def change
    add_column :produits, :descripionprod, :text
  end
end
