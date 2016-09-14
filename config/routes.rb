Rails.application.routes.draw do

  root to: 'pages#index'

  devise_for :users,
             path: '',
             path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile'},
             controllers: {
               registrations: 'registrations'
             }

  resources :users, only: :show

  resources :venues do
    resources :bookings, only: [:create]
  end
end
