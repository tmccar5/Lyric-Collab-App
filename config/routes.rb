Rails.application.routes.draw do
  devise_for :users
  
  get '/lyrics/public' => 'lyrics#public'
  root 'lyrics#index'
  resources :lyrics


end
