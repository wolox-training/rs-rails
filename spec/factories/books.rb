# frozen_string_literal: true

FactoryBot.define do
  factory :book do
    genre { Faker::Book.genre }
    author { Faker::Book.author }
    image { 'Image' }
    title { Faker::Book.title }
    editor { Faker::Book.publisher }
    year { rand(1900..2019) }
  end
end
