class Comment < ActiveRecord::Base
  attr_accessible :body, :chapter_id, :user_id
  belongs_to :chapter
  belongs_to :user
  

 

end
