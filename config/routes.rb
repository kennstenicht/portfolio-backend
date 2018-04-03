module Api::V1
  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        post 'user_token' => 'user_token#create'

        scope "(:locale)", locale: /en|de/ do
          jsonapi_resources :projects
          jsonapi_resources :pages
          jsonapi_resources :users
          jsonapi_resources :custom_fields
        end
      end
    end
  end
end
