Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :grandmother_offers do
    resources :bookings, only: [ :create, :show ]
  end
    resources :bookings, only: [ :index ]do
      member do
        patch :accept
        patch :reject
    end
  end
end
