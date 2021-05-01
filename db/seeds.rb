# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pos = Position.create(:name=>"Gruzhchyk", :salary_in_cents=>100)
e = Employee.create(:position=>pos, :name=>"Jin", :email=>"test2@example.com")
u = User.create(:id => 0, :email => "test@example.com", :password => "password", :password_confirmation => "password", :role => 1, :employee=>e)

puts "Awesome"
