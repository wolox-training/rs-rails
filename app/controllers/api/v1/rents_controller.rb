# frozen_string_literal: true

module Api
  module V1
    class RentsController < ApiController
      before_action :authenticate_user!

      def index
        rents = Rent.all
        render_paginated rents, each_serializer: RentSerializer
      end

      def find_rents_by_user
        rents = Rent.where(user_id: params[:user_id])
        render_paginated rents, each_serializer: RentSerializer
      end

      def find_rents_by_book
        rents = Rent.where(book_id: params[:book_id])
        render_paginated rents, each_serializer: RentSerializer
      end

      def create
        Rent.create(rent_params)
        render json: rent
      end

      private

      def rent
        @rent ||= Rent.find(params.require(:id))
      end

      def rent_params
        params.require(:rent).permit(:id, :start_rent, :end_rent, :book, :user)
      end
    end
  end
end
