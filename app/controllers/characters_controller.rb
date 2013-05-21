class CharactersController < ApplicationController
  # GET /characters
  # GET /characters.json

  before_filter :authenticate_user!, :except => [:index, :show]
  
  def create
      @adventure = Adventure.find(params[:adventure_id])
      @character = @adventure.characters.create(params[:character])
      @character.user = current_user
      @character.save
      redirect_to adventure_path(@adventure)
  end
  def new
    
    @adventure = Adventure.find(params[:adventure_id])
    @character = @adventure.characters.new
    @character.adventure.id = @adventure.id

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @character }
    end
  end
  def update
    @character = Character.find(params[:id])

    respond_to do |format|
      if @character.update_attributes(params[:character])
        format.html { redirect_to @character, notice: 'character was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to characters_path
  end
  def index
    if params[:adventure_id]
      @adventure = Adventure.find(params[:adventure_id])
      @characters = @adventure.characters.all
    else
      @characters = Character.all
    end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @adventures }
    end
  end
  def show
    @character = Character.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @adventure }
    end
  end
  def edit
    @character = Character.find(params[:id])
  end
end
