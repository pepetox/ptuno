class CommentsController < ApplicationController
  # GET /comments
  # GET /comments.json
  
  
  def create
      @adventure = Adventure.find(params[:adventure_id])
      @chapter = @adventure.chapters.find(params[:chapter_id])
      @comment = @chapter.comments.create(params[:comment])
      @comment.user = current_user
      @comment.save
      redirect_to chapter_path(@chapter)
    end

  def destroy
    @chapter = Chapter.find(params[:chapter_id])
    @comment = @chapter.comments.find(params[:id])
    @comment.destroy
    redirect_to chapter_path(@chapter)
  end
end
