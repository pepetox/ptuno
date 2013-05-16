class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :load_aventures, :load_characters

private

	def load_aventures
			@adventures = Adventure.all
	end

	def load_characters
			@characters = Character.all
    end
  
end
