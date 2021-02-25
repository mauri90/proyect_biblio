Rails.application.routes.draw do
  devise_for :users
  root to: "bookings#index"
  resources :books
  resources :users
  get 'bookings', to: 'bookings#index'
  get 'bookings/new', to: 'bookings#new'
  post 'bookings', to: 'bookings#create'
  get 'bookings/:id/edit' , to: 'bookings#edit'
  put 'bookings/:id' , to: 'bookings#update'
  delete 'bookings/:id', to: 'bookings#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
