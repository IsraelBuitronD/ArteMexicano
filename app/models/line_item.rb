class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :handcraft_id, :quantity

  belongs_to :handcraft
  belongs_to :cart

  def total_price
    handcraft.price * quantity
  end

end
