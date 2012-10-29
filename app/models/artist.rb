class Artist < ActiveRecord::Base
  attr_accessible :address, :biography, :business_name, :email, :foto, :latitude, :location, :longitud, :name, :phone, :techniques_tokens
  attr_reader :techniques_tokens

  has_and_belongs_to_many :techniques
  has_and_belongs_to_many :manufacturing_techniques
  has_and_belongs_to_many :handcrafts

  def techniques_tokens=(ids)
    self.technique_ids = ids.split(',')
  end
end
