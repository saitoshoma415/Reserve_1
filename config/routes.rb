Rails.application.routes.draw do

  devise_for :users
  get 'reservations/home'
  get 'reservations/index' 
  get 'reservations/home' 
  get 'reservations/new' 
  post 'reservations' => 'reservations#create'
  root 'statics#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
