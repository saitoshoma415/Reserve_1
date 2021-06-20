Rails.application.routes.draw do
  get 'home/top'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  devise_scope :user do
    get 'user/:id', to: 'users/registrations#detail'
    get 'signup', to: 'users/registrations#new'
    get 'login', to: 'users/sessions#new'
    get 'logout', to: 'users/sessions#destroy'
  end
  get 'description_of_work/test'
  get 'reservation/test'
  get 'reservatione/test'
  get 'reservations/index'
  get 'reservations/new'
  get 'top/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
