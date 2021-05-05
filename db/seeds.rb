# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pos = Position.create(name: 'Worker', salary_in_cents: 100)
e = Employee.create(
  position: Position.find(1),
  name: 'Olive Branch',
  email: 'donald.rowe@tremblay-hettinger.name',
  phone: '613.027.7507 x1872',
  begin_date: DateTime.parse('04/04/2021')
)

u = User.create!(
  email: 'test@example.com',
  password: 'password',
  password_confirmation: 'password',
  role: :admin,
  employee: e
)
puts 'Awesome'
