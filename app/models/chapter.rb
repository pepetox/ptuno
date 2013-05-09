class Chapter < ActiveRecord::Base
  attr_accessible :adventure_id, :body, :name
  belongs_to :adventure
  belongs_to :user

  validates :adventure_id, :body, :name, presence: true
  
end
