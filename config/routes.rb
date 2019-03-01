Rails.application.routes.draw do
    devise_for :users
    root to: 'pages#home'
    get 'dashboard', to: 'pages#dashboard'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :profiles, only: [ :new, :create, :show, :edit, :update ]
    resources :artists, only: [ :index, :new, :create, :show, :edit, :update, :destroy] do
      resources :reviews, only: [ :index, :new, :create, :destroy ]
      resources :bookings, only: [ :new, :create ]
    end
end


