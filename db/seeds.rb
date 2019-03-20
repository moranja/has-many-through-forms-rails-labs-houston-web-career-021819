# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.destroy_all
User.destroy_all

cool = Category.create(name: 'Cool')
adam = User.create(username: 'moranja', email: 'test@abc.com')
mark = User.create(username: 'markpothers', email: 'test2@abc.com')
