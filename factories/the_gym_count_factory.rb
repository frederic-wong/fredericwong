FactoryBot.define do
  factory :the_gym_count do
    gymer { Faker::Number.number(digits: 2) }
  end
end
