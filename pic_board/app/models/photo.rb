class Photo < ActiveRecord::Base
     include HTTParty
      before_create :photo_convert
  def get_photo!(word)
    url = "https://api.instagram.com/v1/tags/#{word}/media/recent?access_token=1315592455.5b9e1e6.25384f70ae7e4dba95691b9e98eed930"
    response = HTTParty.get(url)
    image_url = response["data"][0]["images"]["standard_resolution"]["url"]
  end

  def get_like(newyork)
     url = "https://api.instagram.com/v1/media/555/likes?access_token=32850880.f59def8.98d1f66250f3461bacad5d8cf9a76c25"
    response = HTTParty.get(url)
    like_url = response["data"][0]["username"]
  end
end

