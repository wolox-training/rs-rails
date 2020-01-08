# frozen_string_literal: true

Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :books, only: %i[index show]
      resources :rents, only: %i[create index]
      get '/users/:user_id/rents', to: 'rents#find_rents_by_user'
      get '/books/:book_id/rents', to: 'rents#find_rents_by_book'
    end
  end
end
