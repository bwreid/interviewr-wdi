# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :exam, class: Exam do
    name "MyString"
    fee false
    pass_rate 1
    creator_id 1
  end
end
