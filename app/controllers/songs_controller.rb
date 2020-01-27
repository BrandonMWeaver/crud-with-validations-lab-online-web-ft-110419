class SongsController < ApplicationController
  
  before_action :set_song!
  
  def index
    @songs = Song.all
  end
  
  def show
    @song = Song.find(params[:id])
  end
  
  def new
    @song = Song.new
  end
  
  def create
  end
  
  def edit
    @song = Song.find(params[:id])
  end
  
  def update
    song = Song.find(params[:id])
    song.update(song_params(:title, :released, :release_year, :artist_name, :genre))
    redirect_to song_path(song)
  end
  
  def song_params(*args)
    return params.require(:song).permit(*args)
  end
  
  def set_song!
    @song = Song.find(params[:id])
  end
  
end
