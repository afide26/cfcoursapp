Rails.application.routes.draw do
  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/index'
  
  root 'static_pages#index'
end
