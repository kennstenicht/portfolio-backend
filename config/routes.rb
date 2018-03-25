module Api::V1
  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        jsonapi_resources :projects
        jsonapi_resources :pages
        jsonapi_resources :users
      end
    end
  end
end
