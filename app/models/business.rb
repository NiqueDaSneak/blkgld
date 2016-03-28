class Business < ActiveRecord::Base
	before_create :check_params

	has_many :comments
	has_many :favorites
	has_many :ratings


	validates :business_name, presence: true, uniqueness: true
  	validates :email, uniqueness: true

	has_secure_password

	def check_params
		self.email.downcase
	end

	def average_rating
		
	end

end
