Rails.application.routes.draw do
  devise_for :users
  get 'pages/index', to: 'pages#index', as: 'home'
  get 'pages/contact', to: 'pages#contact', as: 'contact'
  get 'pages/about', to: 'pages#about', as: 'about'

  root 'pages#index'

  get 'product/', to: 'product#index', as: 'products'
  get 'product/:number', to: 'product#show', as: 'product'

  get 'search_results', to: 'product#search_results', as: 'search_results'
  get 'category_search', to: 'product#category_search', as: 'category_search'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
