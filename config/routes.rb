Liquorcabby::Application.routes.draw do
  root :to => 'home#index'
  resources :users
  resources :cocktails do
    member do
      post :favorite
    end
  end
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end

