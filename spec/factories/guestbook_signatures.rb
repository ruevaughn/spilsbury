# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :guestbook_signature do
    guestbook nil
    name "MyString"
    message "MyText"
  end
end
