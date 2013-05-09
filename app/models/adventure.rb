class Adventure < ActiveRecord::Base
  attr_accessible :description, :mc, :name, :playing, :system

  has_many :chapters
  has_many :characters

  validates :description, :name, :system,  presence: true
  validates :name, uniqueness: true

end
