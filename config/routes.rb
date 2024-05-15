# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  namespace :api do
    namespace :v1 do
      resources :spreads, only: [:index]
      resources :spread_alerts, only: %i[index create] do
        collection do
          get    ':market_id/check', action: :check
          get    ':market_id',       action: :show
          put    ':market_id',       action: :update
          delete ':market_id',       action: :destroy
        end
      end
    end
  end
end
