Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
<<<<<<< HEAD
  resources :igloos do
    resources :bookings, only: [:index, :new, :create]
  end
=======
  resources :igloos
  resources :bookings, only: [:index, :show, :new, :create]
>>>>>>> master
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
