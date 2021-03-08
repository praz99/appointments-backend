FactoryBot.define do
  factory :house do
    house_type { Faker::Lorem.word }
    number_of_rooms { Faker::Number.number(digits: 2) }
    location { Faker::Address.city }
    price { Faker::Number.number(digits: 6) }
    built_date { Faker::Date.between(from: 5.years.ago, to: 2.years.ago) }
    description { Faker::Lorem.paragraph(sentence_count: 3) }
    image { Faker::Internet.url(host: 'example.com', path: '/foobar.html') }
  end
end
