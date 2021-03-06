Rails.application.routes.draw do
  devise_for :users
  root 'groups#index'
  namespace :admin do
    resources :groups do
      resources :posts
    end
  end
  resources :groups do
    resources :posts
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
