class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :name
      t.string :description
      t.integer :state_id
    end
    add_index :materials, :state_id
  end
end
