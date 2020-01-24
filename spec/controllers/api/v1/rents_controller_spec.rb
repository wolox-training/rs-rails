# frozen_string_literal: true

require 'rails_helper'

describe Api::V1::RentsController, type: :controller do
  include_context 'Authenticated User'

  describe 'POST #create' do
    context 'When create a new rent' do
      it 'creates a new rent' do
        expect do
          post :create, params: { rent: attributes_for(:rent) }
        end.to change(Rent, :count).by(1)
      end
    end
  end

  describe 'GET #index' do
    context 'When fetching all rents' do
      let!(:rents) { create_list(:rent, 3) }

      before do
        get :index, params: { id: user.id }
      end

      it 'responses with the rents json' do
        expected = ActiveModel::Serializer::CollectionSerializer.new(
          rents, each_serializer: RentSerializer
        ).to_json
        expect(JSON(response.body)['page']).to include(JSON(expected).first)
      end

      it 'responds with 200 status' do
        expect(response).to have_http_status(:ok)
      end
    end
  end
end
