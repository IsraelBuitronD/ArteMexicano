class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :handcraft_id

  belongs_to :handcraft
  belongs_to :cart

end
