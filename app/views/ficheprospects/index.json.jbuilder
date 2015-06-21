json.array!(@ficheprospects) do |ficheprospect|
  json.extract! ficheprospect, :id, :age, :profession, :famille, :consomationcomplement, :frequenceconsomation, :beneficerechercher, :categoriecomplementconsomer, :satisfactioneffetcomplement, :originecomplement, :budgetcomplement, :lieuachatcomplement, :commentaireprospect, :prospect_id
  json.url ficheprospect_url(ficheprospect, format: :json)
end
