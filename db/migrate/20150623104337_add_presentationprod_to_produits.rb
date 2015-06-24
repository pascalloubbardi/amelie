class AddPresentationprodToProduits < ActiveRecord::Migration
  def change
    add_column :produits, :presentationprod, :string
  end
end
