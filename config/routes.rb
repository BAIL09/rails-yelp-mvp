Rails.application.routes.draw do
  get 'reviews/index'
  get 'reviews/create'
  resources :restaurants, only: %i[index new create show] do
    resources :reviews, only: %i[index create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  end
end
