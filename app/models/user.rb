class User < ApplicationRecord
	has_many :friends, :class_name => 'User'
	belongs_to :user
end
