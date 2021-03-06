class Adventure < ActiveRecord::Base
  attr_accessible :description, :mc, :name, :playing, :system, :photo, :imglink
  has_attached_file :photo, :default_url => "missing.png",
                    :url  => "/assets/products/:id/:style/:basename.:extension",
                  	:path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
  has_many :chapters, :dependent => :destroy
  has_many :characters, :dependent => :destroy
  has_many :docs, :dependent => :destroy

  

  validates :description, :name, :system,  presence: true
  validates :name, uniqueness: true
  validates_length_of :imglink, :in => 1..200, :allow_blank => true
  validates_attachment_size :photo, :less_than => 2.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']



end
