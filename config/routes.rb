Rails.application.routes.draw do
  get 'elements/index'
  get 'confirmation/index'
  get 'tracking/index'
  get 'checkout/index'
  get 'category/index'
  get 'contact/index'
  get 'blog/index'
  get 'blog/single_blog'
  get 'abouts/index'
  resources :line_items
  resources :carts
  resources :invoices
  resources :orders
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
