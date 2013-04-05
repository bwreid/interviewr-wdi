FactoryGirl.define do
  factory :choice_a, class: Choice do
    text "a"
    correct false
  end
  factory :choice_b, class: Choice do
    text "b"
    correct true
  end
  factory :choice_c, class: Choice do
    text "c"
    correct false
  end
  factory :choice_d, class: Choice do
    text "d"
    correct false
  end
end

