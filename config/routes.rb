Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end
  
  root 'pages#index'
  get 'pages/index'
  get 'pages/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  
  resources :purposes

  resources :purposes do
    collection do
      post :confirm
    end
  end
  
  resources :participants
  resources :tasks
  resources :scores  
end
