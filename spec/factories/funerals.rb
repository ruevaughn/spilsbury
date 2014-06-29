# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :funeral do
    date "MyString"
    location "MyText"
    person 1
  end
end
