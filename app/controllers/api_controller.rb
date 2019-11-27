# frozen_string_literal: true

class ApiController < ApplicationController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
end
