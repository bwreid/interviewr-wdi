# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :choice do
    text "The answer is a square."
    correct false
    question_id 1
  end
end
