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
    @adventure = Adventure.find(params[:adventure_id])
    @chapter = @adventure.chapters.find(params[:id])
    @chapter.destroy
    redirect_to adventure_path(@adventure)
  end
end
