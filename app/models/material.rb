class Material < ActiveRecord::Base
  attr_accessible :description, :name, :state_id

  belongs_to :states
  has_and_belongs_to_many :handcrafts
end
