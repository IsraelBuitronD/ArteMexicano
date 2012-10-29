class Handcraft < ActiveRecord::Base
  attr_accessible :artist_id, :artist_name, :depth, :description, :height, :highlight, :name, :status, :weight, :width, :tag_list

  acts_as_taggable

  belongs_to :artist
  has_and_belongs_to_many :techniques
  has_and_belongs_to_many :materials
  has_and_belongs_to_many :manufacturing_techniques
  has_and_belongs_to_many :photos

  validates :artist_id, :presence => true
  validates :artist_name, :presence => true
  validates :name, :presence => true
  validates :status, :presence => true
  validates :depth, :numericality => {:greater_than => 0, :less_than => 1000}
  validates :height, :numericality => {:greater_than => 0, :less_than => 1000}
  validates :weight, :numericality => {:greater_than => 0, :less_than => 1000}
  validates :width, :numericality => {:greater_than => 0, :less_than => 1000}

  def artist_name
    artist.try(:name)
  end

  def artist_name=(name)
    self.artist = Artist.find_by_name(name) if name
  end
end
