FactoryBot.define do
  factory :house do
    house_type { Faker::Lorem.word }
    number_of_rooms { Faker::Number.number(digits: 2) }
    location { Faker::Address.city }
    price { Faker::Number.number(digits: 6) }
    built_date { Faker::Date.between(5.years.ago, 2.years.ago) }
    description { Faker::Lorem.paragraph(3, true) }
    image { Faker::Internet.url('example.com', '/foobar.html') }
  end
end