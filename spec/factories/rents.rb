# frozen_string_literal: true

FactoryBot.define do
  factory :rent do
    user { FactoryBot.create(:user) }
    book { FactoryBot.create(:book) }
    start_rent { '2019-12-03' }
    end_rent { '2019-12-04' }
  end
end
