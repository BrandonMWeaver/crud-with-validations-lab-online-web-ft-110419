class SongsController < ApplicationController
  
  def index
    @songs = Song.all
  end
  
  def show
    @song = Song.find(params[:id])
  end
  
  def new
  end
  
  def create
  end
  
  def edit
    @song = Song.find(params[:id])
  end
  
  def update
  end
  
  def song_params(*args)
    return params.require(:song).permit(*args)
  end
  
end
