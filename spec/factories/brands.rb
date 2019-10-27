# frozen_string_literal: true

FactoryBot.define do
  factory :brand do
    title       { Faker::Superhero.name }
    bytitle     { title.downcase }
    img         { title.downcase }
    description { Faker::Lorem.sentence(word_count: 10) }
  end
end

