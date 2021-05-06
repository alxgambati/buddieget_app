Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
  get 'user/add_data', to: 'users#edit', as: :edit_user
  put 'user/add_data', to: 'users#update', as: :update_user
  resources :services
  resource :orders, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
