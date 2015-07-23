class InstagramController < ApplicationController
  def index
    @image = InstagramApi.new.extract_image_info_for
  end
end