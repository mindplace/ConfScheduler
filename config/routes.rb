Rails.application.routes.draw do
  root to: "home#index"

  # Devise user authentication ----------------------------------------------------------------------
  devise_for :users, controllers: { registrations: "users/registrations", sessions: "users/sessions" }

  devise_scope :user do
    get "register", to: "users/registrations#new"
    get "signin", to: "users/sessions#new"
  end

  # -- Routes -----------------------------------------------------------------------------------------

  get "profile", to: "users#show", as: "profile_show"

  get ":url", to: 'conferences#show', as: "conference_show"

  resources :users
end
