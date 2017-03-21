Rails.application.routes.draw do
  get 'books/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/books", controller: "books", action: "index"

end
