class AddcategoriesproduitIdColumnToTags < ActiveRecord::Migration
  def change
  t.integer :categoriesproduit_id
  end
end
