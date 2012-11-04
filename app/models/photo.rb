class Photo < ActiveRecord::Base
  attr_accessible :cover, :description, :filename, :remote_filename_url

  belongs_to :handcraft

  mount_uploader :filename, PhotoUploader
end
