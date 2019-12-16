# frozen_string_literal: true

module Api
    module V1
      class RentsController < ApiController
        before_action :authenticate_user!
  
        def index
          rents = Rents.all
          render_paginated books, each_serializer: RentSerializer
        end
  
        def create
          render json: book
        end
  
        private
  
        def book
          @book ||= Book.find(params.require(:id))
        end
      end
    end
  end
  