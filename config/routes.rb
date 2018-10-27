Rails.application.routes.draw do
  get 'users/new'

  get 'users/edit'

  #get 'static pages/about'
  resources :users
  root "static_pages#home"

  get "static_pages/contact"

  get "static_pages/help"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
