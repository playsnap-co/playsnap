Rails.application.routes.draw do
  resources :hearts
  devise_for :users, controllers: { registrations: "users/registrations" }

  devise_scope :user do
    get "users/:id", to: "users/registrations#show", as: :user
    get "users/:id/edit", to: "users/registrations#edit", as: :edit_user
  end

  resources :children
  resources :wishlists
  resources :reviews
  # resources :reviews, only: :destroy

  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "design", to: "pages#design"
  get "about_playsnap", to: "pages#about_playsnap"

  # Defines the root path route ("/")
  # root "articles#index"
  resources :activities, only: %i[index show edit] do
    resources :reviews
    # resources :reviews, except: %i[destroy]
  end
end
