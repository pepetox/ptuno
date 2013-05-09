class CharactersController < ApplicationController
  # GET /characters
  # GET /characters.json
  def create
      @adventure = Adventure.find(params[:adventure_id])
      @character = @adventure.characters.create(params[:character])
      @character.user = current_user
      @character.save
      redirect_to adventure_path(@adventure)
   end

  def destroy
    @adventure = Adventure.find(params[:adventure_id])
    @character = @adventure.characters.find(params[:id])
    @character.destroy
    redirect_to adventure_path(@adventure)
  end
  def index
    @adventure = Adventure.find(params[:adventure_id])
    @characters = @adventure.characters.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @adventures }
    end
  end


end
