Rails.application.routes.draw do
  root to: "home#index"

  devise_for :users, controllers: { registrations: "users/registrations", sessions: "users/sessions" }

  get "register", to: "users/registrations#new"
  get "signin", to: "users/sessions#new"

  get "profile", to: "users#show", as: "profile_show"

  get ":conference_name", to: 'conferences#show', as: "conference_show"
end
