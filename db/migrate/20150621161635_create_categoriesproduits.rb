class CreateCategoriesproduits < ActiveRecord::Migration
  def change
    create_table :categoriesproduits do |t|
      t.string :nomcategorie

      t.timestamps null: false
    end
  end
end
