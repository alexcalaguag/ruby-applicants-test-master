Rails.application.routes.draw do
  get "/" => "makes#index"
  get "/makes/search" => "makes#search"
  get "/models" => "models#index"
end
