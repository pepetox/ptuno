class MainController < ApplicationController
  def index
  	@adventure = Adventure.first
  end
end
