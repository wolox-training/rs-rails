# frozen_string_literal: true

FactoryBot.define do
  factory :rent do
    user_id { FactoryBot.create(:user).id }
    book_id { FactoryBot.create(:book).id }
    start_rent { '2019-12-03' }
    end_rent { '2019-12-04' }
  end
end
