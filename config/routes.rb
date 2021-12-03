Rails.application.routes.draw do
  namespace :api do 
    resources :articles, only: [:index, :create]
  end
end
