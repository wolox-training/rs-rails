# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApiController
      before_action :authenticate_user!

      def index
        books = Book.all
        render_paginated books, each_serializer: BookSerializer
      end

      def show
        render json: book
      end

      private

      def book
        @book ||= Book.find(params.require(:id))
      end
    end
  end
end
