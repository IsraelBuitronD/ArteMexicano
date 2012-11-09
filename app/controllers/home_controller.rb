class HomeController < ApplicationController
  def index
    @artists = Artist.limit(5).order(:id)
    @handcrafts = Handcraft.limit(5).where(highlight: true)
    @cultural_backgrounds = CulturalBackground.limit(5)
  end

  def search
    if params[:keywords]
      tags = params[:keywords]
      @handcrafts = Handcraft.tagged_with(tags)
      @artists = Artist.where('name LIKE ?', "%#{tags}%")
    end
  end
end
