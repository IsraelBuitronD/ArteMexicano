class Material < ActiveRecord::Base
  attr_accessible :description, :name, :state_id

  belongs_to :state
  has_and_belongs_to_many :handcrafts
end
