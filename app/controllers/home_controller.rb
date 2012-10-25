class HomeController < ApplicationController
  def index
    @artists = Artist.limit(5).order(:id)
    @handcrafts = Handcraft.limit(5).where(highlight: true)
    @cultural_backgrounds = CulturalBackground.limit(5)
  end
end
