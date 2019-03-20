  Rails.application.routes.draw do
    namespace :api do
      namespace :public do
        resources :countries
        resources :locations
        resources :location_groups
        resources :panel_providers
        resources :target_groups
      end
    end
  end
