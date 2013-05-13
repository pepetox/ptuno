class ChaptersController < ApplicationController
  # GET /chapters
  # GET /chapters.json
  before_filter :authenticate_user!
  
  def create
      @adventure = Adventure.find(params[:adventure_id])
      @chapter = @adventure.chapters.create(params[:chapter])
      @chapter.user = current_user
      @chapter.save
      redirect_to adventure_path(@adventure)
  end
  def update
    @chapter = Chapter.find(params[:id])

    respond_to do |format|
      if @chapter.update_attributes(params[:chapter])
        format.html { redirect_to @chapter, notice: 'chapter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @chapter.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    
    @chapter = Chapter.find(params[:id])
    @chapter.destroy
    redirect_to chapters_path
  end
  
  def index
    if params[:adventure_id]
      @adventure = Adventure.find(params[:adventure_id])
      @chapters = @adventure.chapters.all
    else
      @chapters = Chapter.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @chapters }
    end
  end
  def show
    @chapter = Chapter.find(params[:id])    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @adventures }
    end
  end
  def edit
    @chapter = Chapter.find(params[:id])
  end
end

