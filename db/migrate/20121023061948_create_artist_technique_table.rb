class CreateArtistTechniqueTable < ActiveRecord::Migration
  def up
    create_table :artists_techniques, :id => false do |t|
      t.integer :artist_id
      t.integer :technique_id
    end
    add_index :artists_techniques,
              [:artist_id, :technique_id],
              {:name => "artists_techniques_index",
                :unique => true,
                :order => {:name => :desc} }
  end

  def down
    remove_index :artists_techniques,
                 :name => 'artists_techniques_index'
    drop_table :artists_techniques
  end
end
