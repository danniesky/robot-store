Rails.application.routes.draw do
  devise_for :users
  root 'products#index'

  namespace :admin do
    resources :products
  end

  resources :products do
    member do
      post :add_to_cart
    end
  end
end
