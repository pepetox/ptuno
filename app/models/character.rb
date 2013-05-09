class Character < ActiveRecord::Base
  attr_accessible :adventure_id, :alive, :history, :name, :pj, :user_id
  belongs_to :adventure
  belongs_to :user
  

  validates :adventure_id, :name,  presence: true
  


end
