Rails.application.routes.draw do

 resources :products, only: [:index]
 resource :cart, only: [:show]
 resources :order_items, only: [:update, :destroy, :create]
  resources :menus
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :discounts
  resources :restaurants do
    resources :reviews, module: :restaurants
  end
  get '/order', to: 'static_pages#how_to_make_order'
  root 'welcome#index'
  get 'welcome/index'
  get '/about', to: 'static_pages#about'
  resources :reviews, only: [:index]
end
