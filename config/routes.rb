Rails.application.routes.draw do
  root 'home#home'

  get '/menu', to: 'sessions#index'

  resources :users do
    member do
      get :delete
    end
  end

  resources :customers do
    member do
      get :delete
    end
  end

  resources :sales do
    member do
      get :delete
    end
  end

  resources :services do
    member do
      get :delete
    end
  end

  # Blank Forms
  get 'back/index'
  get 'back/computer_trade_in'
  get 'back/display'
  get 'back/computer'
  get 'back/onsite'

  get     '/login',   to: 'sessions#new'
  post    '/login',   to: 'sessions#create'
  delete  '/logout',  to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
