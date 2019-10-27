# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email    { Faker::Internet.email }
    password { '12345678' }
    password_confirmation { '12345678' }
  end
end
