# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    provider { 'email' }
    uid { Faker::Internet.email }
    allow_password_change { false }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
  end
end
