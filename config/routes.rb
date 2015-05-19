ThoughtKeeper::Application.routes.draw do
  devise_for :users

  resources :lists, only: [ :create, :index ] do
    resources :thoughts, only: [ :index, :create, :update, :delete ]
  end

  root to: "home#index"
end
