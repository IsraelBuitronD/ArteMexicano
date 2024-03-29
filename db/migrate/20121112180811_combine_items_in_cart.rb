class CombineItemsInCart < ActiveRecord::Migration
  def up
    # replace multiple items for a single handcraft in a cart with a single item
    Cart.all.each do |cart|
      # count the number of each handcraft in the cart
      sums = cart.line_items.group(:handcraft_id).sum(:quantity)
      sums.each do |handcraft_id, quantity|
        if quantity > 1
          # remove individual items
          cart.line_items.where(handcraft_id: handcraft_id).delete_all
          # replace with a single item
          cart.line_items.create(handcraft_id: handcraft_id, quantity: quantity)
        end
      end
    end
  end

  def down
    # split items with quantity>1 into multiple items
    LineItem.where("quantity > 1").each do |lineitem|
      # add individual items
      lineitem.quantity.times do
        LineItem.create(cart_id: lineitem.cart_id, handcraft_id: lineitem.handcraft_id, quantity: 1)
      end

      # remove original item
      lineitem.destroy
    end
  end
end
