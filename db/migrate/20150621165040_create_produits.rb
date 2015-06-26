class CreateProduits < ActiveRecord::Migration
  def change
    create_table :produits do |t|
      t.string :referenceproduit
      t.string :nonproduit
      t.string :origineproduit
      t.string :conditionnementproduit
      t.string :gammeproduit
      t.text :conseilutilisation
      t.decimal :price, precision: 12, scale: 3
      t.boolean :active
      t.string :categoriesproduit_id

      t.timestamps null: false
    end
  end
end
