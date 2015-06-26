class Produit < ActiveRecord::Base

  belongs_to :categoriesproduit
  validates :categoriesproduit, presence: true 

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  
  #cart store systeme  
  has_many :order_items
  default_scope { where(active: true) }


end
