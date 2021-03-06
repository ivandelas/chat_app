# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.all.each { |u| u.destroy }

User.create([
  {
    name: Faker::Name.unique.name,
    email: Faker::Internet.unique.email,
    password: '123456',
    password_confirmation: '123456'
  },
  {
    name: Faker::Name.unique.name,
    email: Faker::Internet.unique.email,
    password: '123456',
    password_confirmation: '123456'
  },
  {
    name: Faker::Name.unique.name,
    email: Faker::Internet.unique.email,
    password: '123456',
    password_confirmation: '123456'
  }
])

strings = ['Hello!', 'Hi!', 'Greetings!']

User.all.each.with_index do |user, i|
  user.messages.create(body: strings[i])
end

