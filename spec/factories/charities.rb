FactoryBot.define do
  factory :charity do
    name Faker::HarryPotter.character
    address Faker::HarryPotter.location
    contact Faker::Internet.email
    website Faker::Internet.url
  end
end
