class ChaptersController < ApplicationController
  # GET /chapters
  # GET /chapters.json
  def create
      @adventure = Adventure.find(params[:adventure_id])
      @chapter = @adventure.chapters.create(params[:chapter])
      @chapter.user = current_user
      @chapter.save
      redirect_to adventure_path(@adventure)
   end

  def destroy
    
    @chapter = Chapter.find(params[:id])
    @chapter.destroy
    redirect_to adventure_path
  end
  
  def index
    @adventure = Adventure.find(params[:adventure_id])
    @chapters = @adventure.chapters.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @adventures }
    end
  end
end
