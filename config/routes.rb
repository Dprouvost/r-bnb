Rails.application.routes.draw do
    devise_for :users
    root to: 'pages#home'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :profiles, only: [ :new, :create, :show, :edit, :update ]
    resources :artists, only: [ :index, :new, :create, :show, :edit, :update, :destroy] do 
      resources :reviews, only: [ :new, :create ]
      resources :bookings, only: [ :new, :create ]
      resources :schedules, only: [ :new, :create ]
  end
end
