class Doc < ActiveRecord::Base
  attr_accessible :adventure_id, :gdoclink, :history, :name, :user_id, :imglink


  belongs_to :adventure
  belongs_to :user
  
  validates_length_of :imglink, :in => 1..200, :allow_blank => true
  validates_length_of :gdoclink, :in => 1..200, :allow_blank => true
  validates :adventure_id, :name,  presence: true  
   



end
