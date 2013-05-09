class Character < ActiveRecord::Base
  attr_accessible :adventure_id, :alive, :history, :name, :pj, :user_id
  belongs_to :adventure
  belongs_to :user
  has_many :comments

  validates :adventure_id, :name,  presence: true
  validates :name, uniqueness: true


end
