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


  resources :purposes do
    # resources :participants, only: [:new, :create, :destroy] do
    #   collection do
    #     get :category
    #   end
    # end
    collection do
      post :confirm
    end
  end


  # resources :participants  

  resources :participants do
    collection do
      get :category
    end
  end

  resources :tasks
  resources :scores  
end
