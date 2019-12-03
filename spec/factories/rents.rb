FactoryBot.define do
  factory :rent do
    user { nil }
    book { nil }
    start_rent { "2019-12-03" }
    end_rent { "2019-12-03" }
  end
end
