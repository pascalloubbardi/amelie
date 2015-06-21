class CreateFicheprospects < ActiveRecord::Migration
  def change
    create_table :ficheprospects do |t|
      t.integer :age
      t.string :profession
      t.string :famille
      t.boolean :consomationcomplement
      t.string :frequenceconsomation
      t.string :beneficerechercher
      t.string :categoriecomplementconsomer
      t.string :satisfactioneffetcomplement
      t.string :originecomplement
      t.integer :budgetcomplement
      t.string :lieuachatcomplement
      t.string :commentaireprospect
      t.integer :prospect_id

      t.timestamps null: false
    end
  end
end
