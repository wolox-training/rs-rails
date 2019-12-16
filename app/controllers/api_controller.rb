# frozen_string_literal: true

class ApiController < ApplicationController
  include Wor::Paginate
  include DeviseTokenAuth::Concerns::SetUserByToken
end
