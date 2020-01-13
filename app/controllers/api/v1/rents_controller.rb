# frozen_string_literal: true

module Api
  module V1
    class RentsController < ApiController
      before_action :authenticate_user!

      def index
        rents = Rent.filter(params.slice(:book_id, :user_id))
        render_paginated rents, each_serializer: RentSerializer
      end

      def create
        rent = Rent.new(rent_params)
        if rent.save!
          render json: rent, status: :created
        else
          render json: { errors: rent.erros }, status: :precondition_failed
        end
      end

      private

      def rent
        @rent ||= Rent.find(params.require(:id))
      end

      def rent_params
        params.require(:rent).permit(:id, :start_rent, :end_rent, :book_id, :user_id)
      end
    end
  end
end
