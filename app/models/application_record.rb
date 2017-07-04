class ApplicationRecord < ActiveRecord::Base
	attr_accessor :password, :password_confirmation
  self.abstract_class = true
end
