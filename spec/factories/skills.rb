FactoryGirl.define do
  factory :skill do
    name   { FFaker::Name.first_name }
  end

  trait :with_name_error do
    name Random.rand(0..100)
  end

end
