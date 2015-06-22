class AddPaperclipToProduit < ActiveRecord::Migration
  def change

  add_attachment :produits, :image 

  end
end
