Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }

  devise_scope :user do
    get "users/:id", to: "users/registrations#show", as: :user
  end

  resources :children
  resources :wishlists
  resources :reviews, except: :create

  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "design", to: "pages#design"
  get "about_playsnap", to: "pages#about_playsnap"

  # Defines the root path route ("/")
  # root "articles#index"
  resources :activities, only: %i[index show edit] do
    resources :reviews, only: :create
  end
end
