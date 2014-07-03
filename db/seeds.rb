require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def random_number
  20 + rand(80)
end

def random_born_date
  Date.today - (random_number).years - (random_number).days
end

def random_death_date
  Date.today - (random_number).days
end

Admin.delete_all
admin = Admin.new(email: 'test@test.com', password: 'test1234', password_confirmation: 'test1234')
admin.save!

Obituary.delete_all
Guestbook.delete_all
5.times do
  obituary = Obituary.new(first_name: Faker::Name.first_name, middle_name: Faker::Name.first_name, last_name: Faker::Name.last_name, born_date: random_born_date, death_date: random_death_date, gender: 'male')
  obituary.build_guestbook
  obituary.save!
end

5.times do
  obituary = Obituary.new(first_name: Faker::Name.first_name, middle_name: Faker::Name.first_name, last_name: Faker::Name.last_name, born_date: random_born_date, death_date: random_death_date, gender: 'female')
  obituary.build_guestbook
  obituary.save!
end
