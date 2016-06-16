fclass CreateComments < ActiveRecord::Migration
	def change
		create_table 	:comments do |t|

			t.integer 	:user_id
			t.integer 	:business_id
			t.string 	:comment_text, null: false

			t.timestamps null: false
		end
	end
end
