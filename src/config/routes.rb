Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  root to: 'users#index'
  resources :users, only: [:create, :index, :new, :show, :edit, :destroy, :update]

end
