# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :exam do
    name "MyString"
    fee false
    pass_rate 1
  end
end
