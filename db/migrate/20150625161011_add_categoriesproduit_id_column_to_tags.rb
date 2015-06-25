class AddCategoriesproduitIdColumnToTags < ActiveRecord::Migration
  def change
    add_column :tags, :categoriesproduit_id, :integer
  end
end
