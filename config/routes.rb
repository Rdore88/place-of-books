Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/books", controller: "books", action: "index"

  get "/books/new", controller: "books", action: "new"

  get "/books/:id", controller: "books", action: "view"

  post "/books", controller: "books", action: "create"

  get "/books/:id/edit", controller: "books", action: "edit"

  patch "/books/:id", controller: "books", action: "update"

  delete "/books/:id", controller: "books", action: "delete"

end
