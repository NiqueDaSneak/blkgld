class CreateBusinesses < ActiveRecord::Migration
	def change
		create_table :businesses do |t|

			t.string :business_name, null: false
			t.string :email, null: false
			t.string :pasword_digest, null: false
			t.string :street_address, null: false
			t.string :city, null: false
			t.string :state, null: false
			t.string :url, null: false


			t.timestamps null: false
		end
	end
end
