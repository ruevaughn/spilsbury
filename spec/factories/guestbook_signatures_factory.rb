require 'faker'

FactoryGirl.define do
  factory :guestbook_signature do
    guestbook
    name Faker::Name.first_name
    message "My deepest regrets"
  end
end
