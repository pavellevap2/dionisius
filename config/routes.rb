Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :discounts
  resources :restaurants
  get '/order', to: 'static_pages#how_to_make_order'
  root 'welcome#index'
  get 'welcome/index'

end
