class ShowController < ApplicationController
  def index
    @albums = Album.all
     @songs = Song.all
  end
end
