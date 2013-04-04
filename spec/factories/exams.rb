# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :exam do
    name "exam"
    fee false
    pass_rate 50
    creator_id 1
  end
end
