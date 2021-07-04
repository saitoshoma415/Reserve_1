Rails.application.routes.draw do
 
  root 'reservations#home'
  get 'reservations/index' 
  get 'reservations/home' 
  get 'reservations/new' 
  post 'reservations' => 'reservations#create'
  get 'statics/top'
  


  resources :users, only: [:show]
  
  

   devise_scope :user do
    get 'signup', to: 'users/registrations#new'
    get 'login', to: 'users/sessions#new'
    get 'logout', to: 'users/sessions#destroy'
    get 'edit', to: 'users/registrations#edit'
  end
   get 'description_of_work/test'
  
  
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
