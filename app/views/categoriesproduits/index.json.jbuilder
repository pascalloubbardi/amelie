json.array!(@categoriesproduits) do |categoriesproduit|
  json.extract! categoriesproduit, :id, :nomcategorie
  json.url categoriesproduit_url(categoriesproduit, format: :json)
end
