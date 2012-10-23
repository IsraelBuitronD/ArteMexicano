class CreateManufacturingTechniqueTechniqueTable < ActiveRecord::Migration
  def up
    create_table :manufacturing_techniques_techniques, :id => false do |t|
      t.integer :manufacturing_technique_id
      t.integer :technique_id
    end
    add_index :manufacturing_techniques_techniques,
              [:manufacturing_technique_id, :technique_id],
              {:name => "manufacturing_techniques_techniques_index",
                :unique => true}
  end

  def down
    remove_index :manufacturing_techniques_techniques,
                 :name => 'manufacturing_techniques_techniques_index'
    drop_table :manufacturing_techniques_techniques
  end
end
