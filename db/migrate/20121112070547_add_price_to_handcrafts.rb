class AddPriceToHandcrafts < ActiveRecord::Migration
  def change
    add_column :handcrafts, :price, :decimal, precision: 11, scale: 2, default: 0
  end
end
