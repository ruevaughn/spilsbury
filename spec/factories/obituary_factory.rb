require 'faker'

FactoryGirl.define do
  factory :obituary do
    first_name Faker::Name.first_name
    middle_name Faker::Name.first_name
    last_name Faker::Name.last_name
  end

end
