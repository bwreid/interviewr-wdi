# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :run, class: Run do
    user_id 1
    exam_id 1
    count 1
  end
end
