Rails.application.routes.draw do
  resources :products
  get 'about'   => 'static_pages#about'

  get 'contact' => 'static_pages#contact'

  get 'faq'     => 'static_pages#faq'
  
  root 'static_pages#index'
end
