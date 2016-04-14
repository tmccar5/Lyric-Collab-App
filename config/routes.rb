Rails.application.routes.draw do
  devise_for :users
  
  get '/lyrics/public' => 'lyrics#public'
  get '/lyrics/landing' => 'lyrics#landing'
  root 'lyrics#landing'
  resources :lyrics


end
