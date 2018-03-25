module Api::V1
  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        post 'user_token' => 'user_token#create'
        jsonapi_resources :projects
        jsonapi_resources :pages
        jsonapi_resources :users
      end
    end
  end
end
