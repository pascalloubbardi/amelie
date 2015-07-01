class Order < ActiveRecord::Base
  has_many :order_items, dependent: :destroy
  belongs_to :prospect
  before_create :set_order_status
  before_save :update_subtotal


  def subtotal
    order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
  end

  validates :subtotal, presence: true
  validates :tax, presence: true
  validates :shipping, presence: true
  validates :total, presence: true
  
  enum status: [ :Annuler, :en_cours, :terminer, :facturer ]


  private
  def set_order_status
    self.status = 1
  end

  def update_subtotal
    self[:subtotal] = subtotal
  end

end



  
