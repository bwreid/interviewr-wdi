FactoryGirl.define do
  factory :user do
    first "Bob"
    last "Bobberson"
    email "bob@gmail.com"
    address "10 E 21st St, New York, NY"
    phone "MyString"
    occupation "MyString"
    balance "9.99"
    image "MyString"
    password "a"
    password_confirmation "a"
  end
end
