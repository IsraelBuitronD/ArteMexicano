class CreateHandcraftTagTable < ActiveRecord::Migration
  def up
    create_table :handcrafts_tags, :id => false do |t|
      t.integer :handcraft_id
      t.integer :tag_id
    end
    add_index :handcrafts_tags,
              [:handcraft_id, :tag_id],
              {:name => "handcrafts_tags_index",
                :unique => true,
                :order => {:handcraft => :desc} }
  end

  def down
    remove_index :handcrafts_tags,
                 :name => 'handcrafts_tags_index'
    drop_table :handcrafts_tags
  end
end
