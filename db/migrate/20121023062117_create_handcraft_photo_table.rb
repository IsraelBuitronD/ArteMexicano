class CreateHandcraftPhotoTable < ActiveRecord::Migration
  def up
    create_table :handcrafts_photos, :id => false do |t|
      t.integer :handcraft_id
      t.integer :photo_id
    end
    add_index :handcrafts_photos,
              [:handcraft_id, :photo_id],
              {:name => "handcrafts_photos_index",
                :unique => true,
                :order => {:handcraft => :desc} }
  end

  def down
    remove_index :handcrafts_photos,
                 :name => 'handcrafts_photos_index'
    drop_table :handcrafts_photos
  end
end
