class Order < ActiveRecord::Base

  belongs_to :prospect

  validates :subtotal, presence: true
  validates :tax, presence: true
  validates :shipping, presence: true
  validates :total, presence: true
  
  enum status: [ :Annuler, :en_cours, :terminer, :facturer ]


end
