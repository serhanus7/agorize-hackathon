FactoryGirl.define do
  factory :user do
    points  Random.rand(0..100)
  end

  trait :notvalid do
    points { FFaker::NameFR.first_name }
  end
end
