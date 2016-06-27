Rails.application.routes.draw do
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]
  
  root 'static_pages#landing_page'

  get 'about'   => 'static_pages#about'

  get 'index'   => 'static_pages#index'

  get 'contact' => 'static_pages#contact'

  get 'faq'     => 'static_pages#faq'
end
