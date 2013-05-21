class DocsController < ApplicationController
  # GET /docs
  # GET /docs.json
  before_filter :authenticate_user!, :only => :delete
  
  def create
      
      @adventure = Adventure.find(params[:adventure_id])
      @doc = @adventure.docs.create(params[:doc])
      

 
      @doc.user = current_user
      @doc.save
      redirect_to adventure_path(@adventure)
  end
  def new
    
    @adventure = Adventure.find(params[:adventure_id])
    @doc = @adventure.docs.new
    @doc.adventure.id = @adventure.id

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @doc }
    end
  end


  def update
    @doc = Doc.find(params[:id])
    @adventure = @doc.adventure

    respond_to do |format|
      if @doc.update_attributes(params[:doc])
        format.html { redirect_to @doc, notice: 'doc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @doc.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    
    @doc = Doc.find(params[:id])
    @adventure = @doc.adventure
    @doc.destroy
    redirect_to docs_path
  end
  
  def index
    if params[:adventure_id]
      @adventure = Adventure.find(params[:adventure_id])
      @docs = @adventure.docs.all
    else
      @docs = Doc.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @docs }
    end
  end
  def show
    @doc = Doc.find(params[:id])    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @adventures }
    end
  end
  def edit
    @doc = Doc.find(params[:id])
    @adventure = @doc.adventure
  end

end
