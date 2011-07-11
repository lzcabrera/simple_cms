class AdminUser < ActiveRecord::Base
  
  # To configure a different table name
  # set_table_name("admin_users")
  scope :named, lambda {|first,last| where([:first_name => first, :last_name => last])}
  
end
