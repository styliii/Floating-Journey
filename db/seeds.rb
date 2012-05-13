# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([{email:'miguel.senquiz@gmail.com', password: 'miguel'},{email:'li.ouyang@gmail.com', password: 'test'}])
entries = Entry.create([{pos_karma:'something good', neg_karma:'something not good', user_id:1, rating:4}])