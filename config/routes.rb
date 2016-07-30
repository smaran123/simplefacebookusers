Rails.application.routes.draw do
  
  resources :users
#resources :sessions
root "home#index"
post "home/authorize"
  get 'auth/:provider/callback' => 'sessions#create'
#  get 'auth/failure'=> redirect('/')
get 'signout' => 'sessions#destroy', as: 'signout'
end
