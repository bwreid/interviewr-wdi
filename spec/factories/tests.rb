# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :test do
    name "MyString"
    private false
    fee false
    pass_rate 1
    code "MyString"
    creator_id 1
  end
end
