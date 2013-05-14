class MainController < ApplicationController
  def index
  	@adventure = Adventure.first
  end
    def test
  	@adventure = Adventure.first
  end
end
