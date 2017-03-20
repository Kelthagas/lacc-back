Rails.application.routes.draw do
  get 'customers/index'

  get 'customers/new'

  get 'customers/show'

  get 'customers/delete'

  root 'home#index'

  get 'home/admin_index'
  get 'home/user_index'
  get 'home/authenticate'

  resources :users

  resources :customers

  resources :sales

  resources :services

  get 'back/index'
  get 'back/computer_trade_in'
  get 'back/display'
  get 'back/computer'
  get 'back/onsite'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
