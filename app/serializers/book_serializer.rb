# frozen_string_literal: true

class BookSerializer < ActiveModel::Serializer
  attributes :id, :author, :genre, :editor, :year, :image, :created_at, :updated_at, :rents
end
