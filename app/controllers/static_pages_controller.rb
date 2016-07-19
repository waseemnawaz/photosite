class StaticPagesController < ApplicationController
  def index
  end

  def landing_page
  	@featured_photo = Photo.first
  end
end
