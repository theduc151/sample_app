Rails.application.routes.draw do
  root "static_pages#home"
  get "/help", to: "static_pages#help"
  get "/about", to: "static_pages#about"
  get "/contact", to: "static_pages#contact"
  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  # get "/view_comments", to: "comments#view_comments"
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :account_activations, only: :edit
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :microposts
  resources :relationships, only: [:create, :destroy]
  resources :comments, only: %i[create show]
end
