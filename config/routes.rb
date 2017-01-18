Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#root'

  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create]

    resource :session, only: [:create, :destroy]

    get "search/books/:query", to: "books#search"

    resources :books, only: [:index, :show] do
      delete "bookshelves", to: "shelvings#destroy_all"
      resources :comments, only: [:create, :index]
    end

    resources :bookshelves, only: [:index, :show, :create, :update, :destroy] do
      post "books/:book_id", to: "shelvings#create"
      delete "books/:book_id", to: "shelvings#destroy"
    end
  end
end
