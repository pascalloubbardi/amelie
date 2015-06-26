# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"


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

Produit.delete_all
Produit.create! id: 1, referenceproduit: "AM20150015", nonproduit: "Aloe vera", origineproduit: "BIOLOGIQUE", conditionnementproduit: "FLACON", gammeproduit: "PLEINE NATURE", conseilutilisation: "1 à 2 cuillères à soupe par jour (15 à 30 ml) dans un verre d'eau. Agiter avant emploi", price: "", categoriesproduit_id: "9", descripionprod: "Le gel de feuilles d'aloe vera contribue au maintien du système immunitaire. Il possède aussi des propriétés antioxydantes.", presentationprod: "Gel liquide à appliquer sur la peau ou à boire (sans aloïne).", compositionprod: "Jus d'aloé véra (99,30 %), gomme de xanthane, sorbate de potassium.", active: true
Produit.create! id: 2, referenceproduit: "AM20150018", nonproduit: "Curcuma", origineproduit: "BIOLOGIQUE", conditionnementproduit: "COMPRIMES", gammeproduit: "PLEINE NATURE", conseilutilisation: "2 à 4 comprimés par jour.", price: "", categoriesproduit_id: "9", descripionprod: "Le curcuma est un puissant allié pour une action à plusieurs niveaux. Il permet de reminéraliser les articulations favorisant ainsi la mobilité articulaire. Par ailleurs, il favorise la digestion et se révèle particulièrement utile en cas de paresse du foie (nausée, maux d'estomac...) et permet de combattre les radicaux libres.", presentationprod: "Puissant anti-oxydant, Bien-être général", compositionprod: "Curcuma racine BIO (300 mg) - Poivre noir à 4,5% Pipérine (10 mg) - silice - dextrose bio", active: true
Produit.create! id: 3, referenceproduit: "AM20150019", nonproduit: "Desmodium", origineproduit: "BIOLOGIQUE", conditionnementproduit: "GELULES", gammeproduit: "PLEINE NATURE", conseilutilisation: "4 à 6 gélules par jour à répartir au cours des 3 principaux repas, pendant 1 mois à renouveler", price: "", categoriesproduit_id: "9", descripionprod: "Grâce à ses principes actifs, les alcaloïdes indoliques, il permet de favoriser le fonctionnement du foie?.	Le desmodium (Desmodium adscendens) est une plante herbacée rampante ou grimpante sur les troncs d'arbre, originaire d'Afrique équatoriale et d'Amérique centrale. Ses feuilles sont utilisées traditionnellement pour protéger le foie et les bronches. Par son apport en acides aminés, en acides gras et en alcaloïdes spécifiques aux effets détoxifiants et anti-inflammatoires, cette plante contribue au bon fonctionnement hépatique. Les phytothérapeutes lui ont attribué le terme de protecteur hépatique. Le desmodium permet de réduire la toxicité hépatique de diverses substances en réduisant la teneur en transaminases, un marqueur de la souffrance hépatique. Cette plante est la réponse naturelle et adaptée dans toutes les situations où le foie est agressé.	Poudre de feuille de desmodium* (Desmodium adscendens). Gélule d'origine végétale (HPMC : hydroxypropylmethylcellulose).*Produit issu de l'agriculture biologique certifié par Ecocert (FR-BIO-01).", presentationprod: "Le desmodium est traditionnellement reconnue pour son apport en acides aminés, en acides gras et en alcaloïdes, contribueant au bon fonctionnement hépatique.", compositionprod: "", active: true
Produit.create! id: 4, referenceproduit: "AM20150020", nonproduit: "Détox", origineproduit: "BIOLOGIQUE", conditionnementproduit: "GELULES", gammeproduit: "NUTRITHERAPIE", conseilutilisation: "2 gélules par jour à répartir au moment de 2 principaux repas, pendant un mois à renouveler.", price: "", categoriesproduit_id: "9", descripionprod: "Les cures dépuratives doivent être douces et doivent respecter les organes d'élimination : foie, reins, intestins.", presentationprod: "Aide à détoxifier l'organisme", compositionprod: ""
Produit.create! id: 5, referenceproduit: "AM20150024", nonproduit: "Pastilles aux huiles essentielles Digestion", origineproduit: "BIOLOGIQUE", conditionnementproduit: "PASTILLE", gammeproduit: "NUTRITHERAPIE", conseilutilisation: "", price: "", categoriesproduit_id: "9", descripionprod: "", presentationprod: "", compositionprod: ""
Produit.create! id: 6, referenceproduit: "AM20150026", nonproduit: "Digestion", origineproduit: "BIOLOGIQUE", conditionnementproduit: "LIQUIDE", gammeproduit: "NUTRITHERAPIE", conseilutilisation: "", price: "", categoriesproduit_id: "9", descripionprod: "", presentationprod: "", compositionprod: "", active: true
Produit.create! id: 7, referenceproduit: "AM20150027", nonproduit: "Transit", origineproduit: "BIOLOGIQUE", conditionnementproduit: "COMPRIMES", gammeproduit: "NUTRITHERAPIE", conseilutilisation: "", price: "", categoriesproduit_id: "9", descripionprod: "", presentationprod: "", compositionprod: "", active: true
Produit.create! id: 8, referenceproduit: "AM20150032", nonproduit: "Hiver Tranquille", origineproduit: "BIOLOGIQUE", conditionnementproduit: "LIQUIDE", gammeproduit: "NUTRITHERAPIE", conseilutilisation: "", price: "", categoriesproduit_id: "7", descripionprod: "", presentationprod: "", compositionprod: "", active: true
Produit.create! id: 9, referenceproduit: "AM20150034", nonproduit: "Pastilles aux huiles essentielles Respiration", origineproduit: "BIOLOGIQUE", conditionnementproduit: "PASTILLE", gammeproduit: "NUTRITHERAPIE", conseilutilisation: "", price: "", categoriesproduit_id: "7", descripionprod: "", presentationprod: "", compositionprod: "", active: true

