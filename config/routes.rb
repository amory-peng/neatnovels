Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#root'

  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create]
    resource :session, only: [:create, :destroy]
    resources :books, only: [:index, :show]
    resources :bookshelves, only: [:index, :show, :create, :update, :destroy]
    resources :shelvings, only: [:create, :destroy]
  end
end
