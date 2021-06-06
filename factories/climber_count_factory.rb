FactoryBot.define do
  factory :climber_count do
    climber { Faker::Number.number(digits: 2) }
  end
end
