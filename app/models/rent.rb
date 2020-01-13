# frozen_string_literal: true

class Rent < ApplicationRecord
  include Filterable
  validates :start_rent, :end_rent, presence: true
  belongs_to :user
  belongs_to :book

  scope :user_id, ->(user_id) { where user_id: user_id }
  scope :book_id, ->(book_id) { where book_id: book_id }
end
