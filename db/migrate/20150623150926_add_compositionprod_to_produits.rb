class AddCompositionprodToProduits < ActiveRecord::Migration
  def change
    add_column :produits, :compositionprod, :text
  end
end
