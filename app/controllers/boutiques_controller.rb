class BoutiquesController < ApplicationController
  def index
    @produits = Produit.all
    @categoriesproduit = Categoriesproduit.all
    @order_item = current_order.order_items.new
  end
end
