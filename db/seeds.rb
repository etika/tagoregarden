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
Category.create(:category_name=>"Photo Studio")
Category.create(:category_name=>"Star")
Category.create(:category_name=>"Diary")
Category.create(:category_name=>"Dry Cleaner")
Category.create(:category_name=>"Stationery")
Category.create(:category_name=>"Jewellers")
Category.create(:category_name=>"Clothing")
Category.create(:category_name=>"Phone Recharge")
Category.create(:category_name=>"Photocopy")
Category.create(:category_name=>"Opticals")
Category.create(:category_name=>"Juice")
Category.create(:category_name=>"Kids School")
Category.create(:category_name=>"Footwear")
Category.create(:category_name=>"Toy")
Category.create(:category_name=>"Park")
Category.create(:category_name=>"Grievance")
Category.create(:category_name=>"Cosmetics")
Category.create(:category_name=>"Lawyer")
Category.create(:category_name=>"Gym")
Category.create(:category_name=>"Government")
Category.create(:category_name=>"Atm")
Category.create(:category_name=>"Religious Places")
Category.create(:category_name=>"Plumber")
Category.create(:category_name=>"Painter")
Category.create(:category_name=>"Gardner")
Category.create(:category_name=>"Cobbler")
Category.create(:category_name=>"Tutor")
Category.create(:category_name=>"Courier")
Category.create(:category_name=>"Sanitary")
Category.create(:category_name=>"Welder")
Category.create(:category_name=>"Furniture")
Category.create(:category_name=>"Update")
Category.create(:category_name=>"Architect")
Category.create(:category_name=>"Engineer")
Category.create(:category_name=>"Sweet")
Category.create(:category_name=>"Event")
end
if Role.count ==0
  Role.create(:name=>"customer")
  Role.create(:name=>"admin")
  Role.create(:name=>"business")
end
# User.populate 100 do |person|
#       person.first_name    = Faker::Name.name
#       person.last_name = Faker::Company.name
#       person.email   = Faker::Internet.email
#       person.phone_number   = Faker::PhoneNumber.phone_number
#       person.address  = Faker::Address.street_address
#       # person.city    = Faker::Address.city
#       # person.state   = Faker::Address.us_state_abbr
#       # person.zip     = Faker::Address.zip_code
#     end