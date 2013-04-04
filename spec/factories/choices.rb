# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :choice do
    text "MyString"
    correct false
    question_id 1
  end
end
