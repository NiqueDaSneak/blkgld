# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Business.create(business_name: "The Yoga Bar", email: "email@email.com", password: "password", street_address: "15 W 14th Street", city: "Cincinnati", state: "OH", url: "www.theyogabars.com")

User.create(username: "user1", email: "user1@email.com", password: "password")
User.create(username: "user2", email: "user2@email.com", password: "password")
User.create(username: "user3", email: "user3@email.com", password: "password")

Comment.create(user_id: 1, business_id: 1, comment_text: "This place is fantastic!")

Rating.create(user_id: 2, business_id: 1, value: 5)

Favorite.create(user_id: 3, business_id: 1)
