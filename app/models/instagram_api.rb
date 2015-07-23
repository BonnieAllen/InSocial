require 'httparty'
require 'pry'
require 'json'

class InstagramAPI
include HTTParty
base_uri "https://api.instagram.com/v1"

  # def initialize
  #   @client_id = ENV['INSTAGRAM_CLIENT_ID']
  # end

#   def make_next_query
#    HTTParty.get("/users/self/feed?access_token=Figaro.env.my_secret_key
# ") query: {client_id: @client_id})
#   end

  def extract_image_info_for(photo)
    image = self.class.get("/users/self/feed?access_token=Figaro.env.my_secret_key")
    image.map { |h| Photo.new(h["creator"], h["image_url"], ["supertitle"], ["heart_likes"], ["upload_date"]  }
  end

    # def extract_photo_info_for(photo)
    # holding_hash = {original_id:    photo["id"],
    #               creator:        photo["user"]["username"],
    #               image_url:      photo["images"]["standard_resolution"]["url"],
    #               supertitle:        photo["caption"]["text"],
                  # post_url:       photo["link"],
                  # total_comments: photo["comments"]["count"],
  #                 heart_likes:     photo["likes"]["count"],
  #                 upload_date:    Time.strptime(photo["created_time"],'%s')}
  # end
end