Rails.application.routes.draw do
  resources :articles
  root 'pages#home'
  get '/about' => 'pages#about'
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
end
