class Comment < ActiveRecord::Base
	
	belongs_to :user
	belongs_to :business

	validates :comment_text, length: {maximum: 500}

end
