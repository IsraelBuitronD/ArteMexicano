class CreateHandcrafts < ActiveRecord::Migration
  def change
    create_table :handcrafts do |t|
      t.string :name
      t.string :description
      t.decimal :weight
      t.decimal :height
      t.decimal :width
      t.decimal :depth
      t.boolean :highlight
      t.integer :status
      t.integer :artist_id
    end
  end
end
