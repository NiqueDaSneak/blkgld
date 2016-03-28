require 'bcrypt'

class User < ActiveRecord::Base
	before_create :check_params


	has_many :comments
	has_many :favorites
	has_many :ratings


	validates :username, presence: true, uniqueness: true
	validates :email, email: true, uniqueness: true

	has_secure_password

	def check_params
		self.email.downcase
	end
	
end
