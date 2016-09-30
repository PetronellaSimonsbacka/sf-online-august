Rails.application.routes.draw do

  get '/restaurant', controller: :restaurants, action: :index
  get '/carts', controller: :carts, action: :index

  resources :menus, only: [:index, :create, :new]
  resources :dishes, only: [:new, :show, :create] do
    post 'add_item', controller: :carts, action: :add_item
  end

  devise_for :users, controllers: { registrations: 'registrations' }

  root to: 'restaurant#index'
end
