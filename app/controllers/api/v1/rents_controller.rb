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
        new_rent = Rent.new(rent_params)
        if new_rent.save!
          RentMailer.with(rent: new_rent, user: current_user).new_rent_email.deliver_later
          render json: new_rent, status: :created
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
