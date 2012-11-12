class Cart < ActiveRecord::Base

  has_many :line_items, :dependent => :destroy

  def add_handcraft(handcraft_id)
    current_item = line_items.where(handcraft_id: handcraft_id).first

    if current_item
      current_item.quantity += 1
    else
      current_item = LineItem.new(handcraft_id: handcraft_id)
      line_items << current_item
    end

    current_item
  end

end
