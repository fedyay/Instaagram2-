Rails.application.routes.draw do
  root 'pages#root'
  get '/my_page' => 'pages#show', as: 'profile'
  get '/friendship' => 'pages#friendship'
  devise_for :users

  resources :images do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
