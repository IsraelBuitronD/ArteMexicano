class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :business_name
      t.string :address
      t.string :phone
      t.string :email
      t.string :foto
      t.decimal :latitude
      t.decimal :longitud
      t.string :location
      t.string :location
      t.string :biography
    end
  end
end
