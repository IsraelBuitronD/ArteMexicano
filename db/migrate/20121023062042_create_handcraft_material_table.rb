class CreateHandcraftMaterialTable < ActiveRecord::Migration
  def up
    create_table :handcrafts_materials, :id => false do |t|
      t.integer :handcraft_id
      t.integer :material_id
    end
    add_index :handcrafts_materials,
              [:handcraft_id, :material_id],
              {:name => "handcrafts_materials_index",
                :unique => true,
                :order => {:handcraft => :desc} }
  end

  def down
    remove_index :handcrafts_materials,
                 :name => 'handcrafts_materials_index'
    drop_table :handcrafts_materials
  end
end
