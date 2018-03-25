module Api::V1
  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        jsonapi_resources :projects
        jsonapi_resources :pages
      end
    end
  end
end
