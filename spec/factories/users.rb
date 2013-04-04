# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    first "MyString"
    last "MyString"
    email "MyString"
    address "MyString"
    phone "MyString"
    occupation "MyString"
    balance "9.99"
    image "MyString"
    password_digest "MyString"
    lat 1.5
    lon 1.5
  end
end
