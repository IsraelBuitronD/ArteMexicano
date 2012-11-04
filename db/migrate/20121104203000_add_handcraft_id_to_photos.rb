class AddHandcraftIdToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :handcraft_id, :integer
  end
end
