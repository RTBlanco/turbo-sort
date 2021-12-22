Rails.application.routes.draw do
  root 'users#index'
  resources :users
  get '/happy', to: 'users#happy'
  get '/sad', to: 'users#sad'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
