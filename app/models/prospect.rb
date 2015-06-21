class Prospect < ActiveRecord::Base


  has_one :ficheprospect, :dependent => :destroy


# import fichier scv dans prospect
  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, encoding:'iso-8859-1:utf-8', headers: true) do |row|
       prospect_hash = row.to_hash
        prospect = Prospect.where(id: prospect_hash["id"])

        if prospect.count == 1
          prospect.first.update_attributes(prospect_hash)
        else
          Prospect.create!(prospect_hash)
        end # end if !prospect.nil?
    end
  end
#end import fichier scv dans prospect

 

  

  def previous_prospect
    Prospect.where("id < ?", id).limit(1).order(id: :desc).first
  end

  def next_prospect
    Prospect.where("id > ?", id).limit(1).order(id: :asc).first
  end


end
