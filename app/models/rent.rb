# frozen_string_literal: true

class Rent < ApplicationRecord
  validates :start_rent, :end_rent, presence: true
  belongs_to :user
  belongs_to :book
end
