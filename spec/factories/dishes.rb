# dishes.rb
FactoryBot.define do 
  factory :dish do
    menu
    name {Faker::Lorem.word}
    price {Faker::Number.within(range: 50..200)}
    discount {Faker::Number.within(range: 1..50)}
  end
end
