FactoryGirl.define do
  factory :user, class: User do
    first "Bob"
    last "Bobberson"
    email "bob@gmail.com"
    address "10 E 21st St, New York, NY"
    is_house false
    phone "MyString"
    occupation "MyString"
    balance "9.99"
    image "MyString"
    password "a"
    password_confirmation "a"
  end
end
