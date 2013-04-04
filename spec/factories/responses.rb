# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :response do
    answer false
    user_id 1
    question_id 1
  end
end
