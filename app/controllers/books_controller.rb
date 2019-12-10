class BooksController < ApplicationController
    include Wor::Paginate

    def index
        @books = Book.all
        render_paginated @books, each_serializer: BookSerializer
      end

    def show
        @book = Book.find(params[:id])
        render json: @book
    end
end
