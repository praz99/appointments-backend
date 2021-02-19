FactoryBot.define do
  factory :appointment do
    date { Faker::Date.forward(20) }
    user_id { nil }
    house_id { nil }
  end
end