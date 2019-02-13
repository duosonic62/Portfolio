Rails.application.routes.draw do
  resources :images
  get 'home/contact'
  get 'home/index'
  get 'home/about'
  post 'home/afford'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
