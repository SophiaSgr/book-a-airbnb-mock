Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :grandmother_offers do
    resources :bookings, only: [ :index, :new, :create, :show ]
  end
end
