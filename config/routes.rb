Rails.application.routes.draw do
  root "books#index"

  # get "/books", to: "books#index"
  # get "/books/:id", to: "books#show"
  # можно заменить на
  resources :books
  # О подробностях DSL, доступного в этом файле, написано в http://rusrails.ru/routing
end
