Rails.application.routes.draw do
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]
  
  root 'static_pages#index'

  get 'about'   => 'static_pages#about'

  get 'landing' => 'products#landing_page'

  get 'contact' => 'static_pages#contact'

  get 'faq'     => 'static_pages#faq'
end
