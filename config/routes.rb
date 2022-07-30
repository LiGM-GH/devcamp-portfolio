Rails.application.routes.draw do
  root to: 'pages#home'

  resources :portfolios

  get 'pages/home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
