class Photo < ActiveRecord::Base
  attr_accessible :cover, :description, :filename

  has_and_belongs_to_many :handcrafts
end
