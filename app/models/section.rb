class Section < ActiveRecord::Base
  
  belongs_to :page
  has_many :section_edits
  has_many :editors, :through => :section_edits, :class_name => "AdminUser"
  # we dont' have to specify the foreign key because section edits has that information
  CONTENT_TYPES = ['text', 'HTML']
  #validates_presence_of :name
  #validates_length_of :name, :maximum => 255
  validates_inclusion_of :content_type, :in => CONTENT_TYPES, 
    :message => "must be one of: #{CONTENT_TYPES.join(', ')}"
  # validates_presence_of :content
  
  validates :name, :presence => true , :length => {:maximum => 255}
  validates :content, :presence => true
  
end
