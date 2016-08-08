Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  resources :users

  resources :products do
    resources :comments
  end
  resources :orders, only: [:index, :show, :create, :destroy]

  root 'static_pages#landing_page'

  get 'about'     => 'static_pages#about'

  get 'index'     => 'static_pages#index'

  get 'contact'   => 'static_pages#contact'

  get 'faq'       => 'static_pages#faq'

  post 'static_pages/thank_you'

  post 'payments/create'
end
