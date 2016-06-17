Rails.application.routes.draw do
  get 'about'   => 'static_pages#about'

  get 'contact' => 'static_pages#contact'

  get 'static_pages/index'
  
  root 'static_pages#index'
end
