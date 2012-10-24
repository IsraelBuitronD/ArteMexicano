class Handcraft < ActiveRecord::Base
  attr_accessible :artist_id, :depth, :description, :height, :highlight, :name, :status, :weight, :width, :tag_list

  belongs_to :artist
  has_and_belongs_to_many :techniques
  has_and_belongs_to_many :materials
  has_and_belongs_to_many :manufacturing_techniques
  has_and_belongs_to_many :photos
  has_and_belongs_to_many :tags
end
