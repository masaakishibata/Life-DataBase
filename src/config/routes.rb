Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
  }

  root to: 'users#index'
  resources :users
  resources :actions
  resources :scores

end
