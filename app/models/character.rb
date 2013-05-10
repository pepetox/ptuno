class Character < ActiveRecord::Base
  attr_accessible :adventure_id, :alive, :history, :name, :pj, :user_id, :photo
  has_attached_file :photo, :default_url => "missing.png",
                    :url  => "/assets/products/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"

  belongs_to :adventure
  belongs_to :user
  

  validates :adventure_id, :name,  presence: true  
  validates_attachment_size :photo, :less_than => 2.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']



end
