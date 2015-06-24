class AddDescriptioncatToCategoriesproduits < ActiveRecord::Migration
  def change
    add_column :categoriesproduits, :descriptioncat, :text
  end
end
