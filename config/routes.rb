Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/authors", to: "authors#index", as: "authors"
  post "/authors", to: "authors#create"
  get "/authors/new", to: "authors#new", as: "new_author"
  get "/authors/:id", to: "authors#show", as: "author"
  patch "/authors/:id", to: "authors#update"
  put "/authors/:id", to: "authors#update"
  get "/authors/:id/edit", to: "authors#edit", as: "edit_author"
  delete "/authors/:id", to: "authors#destroy"

  resources :genres
  resources :books

end
