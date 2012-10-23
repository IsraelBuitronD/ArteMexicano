class Photo < ActiveRecord::Base
  attr_accessible :cover, :description, :filename
end
