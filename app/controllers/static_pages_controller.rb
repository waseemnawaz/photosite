class StaticPagesController < ApplicationController
  def index
  end

  def landing_page
  	@featured_photo = Photo.first
  	@photos = Photo.limit(3)
  end
end
