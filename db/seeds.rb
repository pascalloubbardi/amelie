# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Categoriesproduit.delete_all
Categoriesproduit.create! id: 1, nomcategorie: "Anti-age", descriptioncat: ""
Categoriesproduit.create! id: 2, nomcategorie: "Articulation", descriptioncat: "" 
Categoriesproduit.create! id: 3, nomcategorie: "Beaute", descriptioncat: ""
Categoriesproduit.create! id: 4, nomcategorie: "Cardio-vasculaire", descriptioncat: ""
Categoriesproduit.create! id: 5, nomcategorie: "Circulation", descriptioncat: ""
Categoriesproduit.create! id: 6, nomcategorie: "Cosmetiques", descriptioncat: "" 
Categoriesproduit.create! id: 7, nomcategorie: "Défences-naturelles", descriptioncat: ""
Categoriesproduit.create! id: 8, nomcategorie: "Détente", descriptioncat: ""
Categoriesproduit.create! id: 9, nomcategorie: "Digestion", descriptioncat: ""
Categoriesproduit.create! id: 10, nomcategorie: "Energie", descriptioncat: ""
Categoriesproduit.create! id: 11, nomcategorie: "Femme", descriptioncat: ""
Categoriesproduit.create! id: 12, nomcategorie: "Gamme hyperprotéinées", descriptioncat: ""
Categoriesproduit.create! id: 13, nomcategorie: "Gamme liquide", descriptioncat: ""
Categoriesproduit.create! id: 14, nomcategorie: "Homme", descriptioncat: ""
Categoriesproduit.create! id: 15, nomcategorie: "Huiles essentielles", descriptioncat: ""
Categoriesproduit.create! id: 16, nomcategorie: "Minceur", descriptioncat: ""

