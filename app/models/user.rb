class User < ActiveRecord::Base
  attr_accessible :email, :name 
  attr_protected :password, :salt, :is_admin
end
