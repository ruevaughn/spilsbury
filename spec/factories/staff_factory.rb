require 'faker'

FactoryGirl.define do
  factory :staff do
    name { Faker::Name.first_name }
    # image "MyString"
    description "This person does a lot of stuff"
    job_name "Manager"
  end
end
