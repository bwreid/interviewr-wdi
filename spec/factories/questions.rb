# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    text "MyText"
    exam_id 1
  end
end
