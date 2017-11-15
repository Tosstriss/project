Rails.application.routes.draw do
  get 'product/', to: 'product#index', as: 'products'

  get 'product/:number', to: 'product#show', as: 'product'


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
