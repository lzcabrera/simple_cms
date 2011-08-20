class Page < ActiveRecord::Base
  
  belongs_to :subject #, {foreign_key => "subject_id"}
  has_many :sections
  
  # has_and_belongs_to_many :admin_users
  has_and_belongs_to_many :editors, :class_name => "AdminUser"
  
  # validates_presence_of :name
  # validates_length_of :name, :maximum => 255
  # validates_presence_of :permalink
  # validates_length_of :permalink, :within => 3..255
    # use presence with length to disallow spaces
  # validates_uniqueness_of :permalink
    # for unique values by subject, :scope => :subject_id
    
    
  validates :name, :presence => true, :length => {:maximum => 255}  
  validates :permalink, :presence => true, :length => {:within => 3..255}, :uniqueness => true
  
end
