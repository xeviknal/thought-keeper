ThoughtKeeper::Application.routes.draw do
  resources :lists, only: [ :create, :index ] do
    resources :thoughts, only: [ :index, :create, :update, :delete ]
  end
end
