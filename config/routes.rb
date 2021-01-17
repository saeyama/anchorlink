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

  #目的
  resources :purposes do
    collection do
      post :confirm
    end
    #参加
    resources :participants, only: [:new, :create, :destroy] do
      #参加タスク
      resources :participant_tasks, only: [:update, :index]    
    end
    #評価
    resources :scores, only: [:new, :create, :destroy, :index] 
  end

end
