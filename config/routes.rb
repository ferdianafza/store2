Rails.application.routes.draw do
  resources :comments
   devise_for :users, controllers: { sessions: 'users/sessions' }
  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new'
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :homes
  root to: 'homes#index'

  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
