class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :filename
      t.string :description
      t.boolean :cover

      t.timestamps
    end
  end
end
