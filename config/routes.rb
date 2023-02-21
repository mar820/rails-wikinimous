Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :articles

  get 'articles/:id/edit', to: 'articles#edit', as: :edit
  patch 'articles/:id', to: 'articles#update'

  delete 'articles/:id', to: 'articles#destroy'
end
