Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "/cocktails", to: "cocktails#index"

  # get "/cocktails/new", to: "cocktails#new"
  # post "cocktails", to: "cocktails#create"

  # get "/cocktails/:id", to: "cocktails#show"

  root to: "cocktails#index"

  resources :cocktails, only: [:index, :new, :create, :show] do
    resources :doses, only: [:create] # why not the other ones?
  end
  resources :doses, only: [:destroy] # why not nested?
end
