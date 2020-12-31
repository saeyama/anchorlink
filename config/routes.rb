Rails.application.routes.draw do
  get 'users/show'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end

  resources :users
  
  root 'pages#index'
  get 'pages/index'
  get 'pages/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  get 'participants/category'

  resources :purposes do
    resources :participants, only: [:new, :create, :destroy, :index] do
      resources :participant_tasks, only: [:update,:show]    
    end
    resources :tasks, only: [:index] 
    collection do
      post :confirm
    end
  end

  # resources :participant_tasks, only: [:new, :show, :create, :update] 

  resources :scores  
end
