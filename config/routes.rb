Rails.application.routes.draw do
  get "/articles", to: "articles#index"
  resources :books
  
  get '/test', to: 'api#show'
end
