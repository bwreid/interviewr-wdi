# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :exam, class: Exam do
    name "exam"
    fee false
    pass_rate 50
    creator_id 1
  end
  factory :exam_with_a_fee, class: Exam do
    name        "exam"
    fee         true
    cost        5
    pass_rate   50
    creator_id  1
  end


end
