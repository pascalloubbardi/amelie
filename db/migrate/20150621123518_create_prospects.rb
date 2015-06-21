class CreateProspects < ActiveRecord::Migration
  def change
    create_table :prospects do |t|
      t.string :date
      t.string :codepostal
      t.string :ville
      t.string :adresse
      t.string :genre
      t.string :nom
      t.string :prenom
      t.string :mail
      t.string :tel1
      t.string :tel2
      t.string :tel3
      t.string :mobile
      t.string :fax
      t.string :site
      t.string :comment
      t.string :activite
      t.string :habitat
      t.string :agemoyen
      t.string :tel1prospection
      t.boolean :tel2prospection
      t.boolean :tel3prospection
      t.boolean :mobileprospection
      t.boolean :faxprospection

      t.timestamps null: false
    end
  end
end
