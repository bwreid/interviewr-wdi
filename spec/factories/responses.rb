# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :response, class: Response do
    answer false
    run_id 1
    question_id 1
  end
  factory :response_a, class: Response do
    answer false
    run_id 1
    question_id 1
  end
  factory :response_b, class: Response do
    answer true
    run_id 2
    question_id 1
  end
  factory :response_c, class: Response do
    answer false
    run_id 3
    question_id 1
  end
  factory :response_d, class: Response do
    answer false
    run_id 3
    question_id 1
  end
end
