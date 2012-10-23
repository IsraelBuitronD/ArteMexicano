class Artist < ActiveRecord::Base
  attr_accessible :address, :biography, :business_name, :email, :foto, :latitude, :location, :location, :longitud, :name, :phone

  has_and_belongs_to_many :techniques
  has_and_belongs_to_many :manufacturing_techniques
  has_and_belongs_to_many :handcrafts
end
