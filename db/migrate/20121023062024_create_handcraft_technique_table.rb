class CreateHandcraftTechniqueTable < ActiveRecord::Migration
  def up
    create_table :handcrafts_techniques, :id => false do |t|
      t.integer :handcraft_id
      t.integer :technique_id
    end
    add_index :handcrafts_techniques,
              [:handcraft_id, :technique_id],
              {:name => "handcrafts_techniques_index",
                :unique => true,
                :order => {:handcraft => :desc} }
  end

  def down
    remove_index :handcrafts_techniques,
                 :name => 'handcrafts_techniques_index'
    drop_table :handcrafts_techniques
  end
end
