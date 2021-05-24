Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin/dashboard', as: 'rails_admin'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  namespace :admin do
    resources :dashboard
  end
  root 'pages#index'

  resources :categories, only: [:index] do
    resources :products, only: [:index]
  end

  get '/cart', to: 'order_items#index'
  resources :order_items, path: 'cart/items'

  get '/cart/checkout', to: 'orders#new', as: :checkout
  patch '/cart/checkout', to: 'orders#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
