Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
  }

  root to: 'users#index'
  resources :users, only: [:create, :index, :new, :show, :edit, :destroy, :update]
  resource :actions, only: [:new, :create, :index, :edid, :destroy]
  resource :scores, only: [:new, :create, :index, :edid, :destroy]

end
