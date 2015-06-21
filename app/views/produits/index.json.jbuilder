json.array!(@produits) do |produit|
  json.extract! produit, :id, :referenceproduit, :nonproduit, :origineproduit, :conditionnementproduit, :gammeproduit, :conseilutilisation, :prixventeproduit, :prixachatproduit, :categoriesproduit_id
  json.url produit_url(produit, format: :json)
end
