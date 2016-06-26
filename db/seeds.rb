# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Category.count == 0
Category.create(:category_name=>"Hotel")
Category.create(:category_name=>"Doctor")

Category.create(:category_name=>"Electrician")
Category.create(:category_name=>"Chemist")
Category.create(:category_name=>"Parlour")
Category.create(:category_name=>"Tailor")
Category.create(:category_name=>"Grocery")
Category.create(:category_name=>"Bank")
Category.create(:category_name=>"Bakery")
end