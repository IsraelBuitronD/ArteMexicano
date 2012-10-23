class CreateHandcraftManufacturingTechniqueTable < ActiveRecord::Migration
  def up
    create_table :handcrafts_manufacturing_techniques, :id => false do |t|
      t.integer :handcraft_id
      t.integer :manufacturing_technique_id
    end
    add_index :handcrafts_manufacturing_techniques,
              [:handcraft_id, :manufacturing_technique_id],
              {:name => "handcrafts_manufacturing_techniques_index",
                :unique => true }
  end

  def down
    remove_index :handcrafts_manufacturing_techniques,
                 :name => 'handcrafts_manufacturing_techniques_index'
    drop_table :handcrafts_manufacturing_techniques
  end
end
