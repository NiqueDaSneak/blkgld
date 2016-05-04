class User < ActiveRecord::Base
	before_create :check_params
	mount_uploader :avatar, AvatarUploader


	has_many :comments
	has_many :favorites
	has_many :ratings
	has_many :tags


	validates :username, presence: true, uniqueness: true
  	validates :email, uniqueness: true

	has_secure_password

	def check_params
		self.email.downcase
	end
	
end
