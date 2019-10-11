Rails.application.routes.draw do
  scope '(:locale)', locale: /en|de/ do
    namespace :v1 do
      post 'user_token' => 'user_token#create'

      jsonapi_resources :projects
      jsonapi_resources :pages
      jsonapi_resources :users
      jsonapi_resources :custom_fields
    end
  end
end

