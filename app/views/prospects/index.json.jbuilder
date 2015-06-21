json.array!(@prospects) do |prospect|
  json.extract! prospect, :id, :date, :codepostal, :ville, :adresse, :genre, :nom, :prenom, :mail, :tel1, :tel2, :tel3, :mobile, :fax, :site, :comment, :activite, :habitat, :agemoyen, :tel1prospection, :tel2prospection, :tel3prospection, :mobileprospection, :faxprospection
  json.url prospect_url(prospect, format: :json)
end
