class PhotosController < ApplicationController
  def new
url = "https://api.instagram.com/v1/tags/newyork/media/recent?access_token=1315592455.5b9e1e6.25384f70ae7e4dba95691b9e98eed930"
    response = HTTParty.get(url)
      @post = Post.new
      @image_url = response["data"][0]["images"]["standard_resolution"]["url"]
end

     def show
          @photo = Photo.find(params[:id])
          @comments = @photo.comments.all
          @comment = @photo.comments.all?

     end
end
