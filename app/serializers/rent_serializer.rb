# frozen_string_literal: true

class RentSerializer < ActiveModel::Serializer
  attributes :id, :start_rent, :end_rent, :book, :user
end
