Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :issues
  
  resources :tickets do
    member do
      get 'assign'
      post 'add'
      delete 'remove'
      put 'submit'
    end
  end
  
  get '/ticketsys/tickets' => 'ticketsys_tickets#index'
  put '/ticketsys/tickets/:id/assign' => 'ticketsys_tickets#assign', as: :assign
  put '/ticketsys/tickets/:id/working' => 'ticketsys_tickets#working', as: :working
  put '/ticketsys/tickets/:id/worked' => 'ticketsys_tickets#worked', as: :worked
  put '/ticketsys/tickets/:id/complete' => 'ticketsys_tickets#complete', as: :complete
  
  root "tickets#index"
 end