class Handcraft < ActiveRecord::Base
  attr_accessible :artist_id, :depth, :description, :height, :highlight, :name, :status, :weight, :width, :tag_list

  acts_as_taggable

  belongs_to :artist
  has_and_belongs_to_many :techniques
  has_and_belongs_to_many :materials
  has_and_belongs_to_many :manufacturing_techniques
  has_and_belongs_to_many :photos
end
