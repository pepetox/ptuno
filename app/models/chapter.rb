class Chapter < ActiveRecord::Base
  attr_accessible :adventure_id, :body, :name, :photo, :imglink
  has_attached_file :photo, :default_url => "missing.png",
                    :url  => "/assets/products/:id/:style/:basename.:extension",
                  	:path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
  belongs_to :adventure
  belongs_to :user
  has_many :comments
  validates_length_of :imglink, :in => 1..200, :allow_blank => true
  validates :adventure_id, :body, :name, presence: true  
  validates_attachment_size :photo, :less_than => 2.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
  
end
