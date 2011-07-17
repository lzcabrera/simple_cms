class Section < ActiveRecord::Base
  
  belongs_to :page
  has_many :section_edits
  has_many :editors, :through => :section_edits, :class_name => "AdminUser"
  # we dont' have to specify the foreign key because section edits has that information
end
