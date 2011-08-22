class Subject < ActiveRecord::Base
  
  has_many :pages
  
    # Don't need to validate (in most cases):
    # ids, foreign keys, timestamps, booleans, counters
  # validates_presence_of :name
  # validates_length_of :name, :maximum => 255
    # validates_presence_of validates_length_of :minimum => 1
    # different error messages: "can't be blank" or "is too short"
    # validates_lenght_of allows strings with only spaces!
  
  
  
  validates :name, :presence => true, :length => {:maximum => 255}
  
  scope :visible, where(:visible => true)
  scope :invisible, where(:visible => false)
  scope :search, lambda {|query| where(["name LIKE ?", "%#{query}%"])}
  
end
