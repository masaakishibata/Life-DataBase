Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
  }

  root to: 'users#index'
  resources :users, only: [:create, :index, :new, :show, :edit, :destroy, :update] do
    resources :actions, only: [:new, :create, :index, :edit, :destroy, :update, :show]
    resources :scores, only: [:new, :create, :index, :edit, :destroy, :update, :show]
  end

end
