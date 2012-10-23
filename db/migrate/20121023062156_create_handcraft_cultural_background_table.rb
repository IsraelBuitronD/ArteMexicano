class CreateHandcraftCulturalBackgroundTable < ActiveRecord::Migration
  def up
    create_table :handcrafts_cultural_backgrounds, :id => false do |t|
      t.integer :handcraft_id
      t.integer :cultural_background_id
    end
    add_index :handcrafts_cultural_backgrounds,
              [:handcraft_id, :cultural_background_id],
              {:name => "handcrafts_cultural_backgrounds_index",
                :unique => true,
                :order => {:handcraft => :desc} }
  end

  def down
    remove_index :handcrafts_cultural_backgrounds,
                 :name => 'handcrafts_cultural_backgrounds_index'
    drop_table :handcrafts_cultural_backgrounds
  end
end
