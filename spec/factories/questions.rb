# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question, class: Question do
    text "MyText"
  end
end
