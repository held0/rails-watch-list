Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]

  # manual routes:
  # get 'lists', to: 'lists#index', as: :lists
  # get 'lists/:id', to: 'lists#show', as: :list
  # get 'lists/new', to: 'lists#new'
  # post 'lists', to: 'lists#create'
  # get 'lists/:list_id/bookmarks/new', to: 'bookmarks#new'
  # post 'lists/:list_id/bookmarks', to: 'bookmarks#create'
  # delete 'bookmarks/:id', to: 'bookmarks#destroy'
end
