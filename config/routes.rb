Rails.application.routes.draw do
  resources :comments
  resources :posts do
    resources :comments
  end
  root to: 'pages#welcome'
  get 'api.json', to: 'pages#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
