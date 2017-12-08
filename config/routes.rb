Rails.application.routes.draw do

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}
  # devise_for :users
  resources :users
  resources :products

  get 'simple_pages/about'

  get 'simple_pages/contact'

  get 'simple_pages/index'

  get 'simple_pages/landing_page'

  post 'simple_pages/thank_you'

  root 'simple_pages#landing_page'

  resources :orders, only: [:index, :show, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# I forgot to check in to authentication branch so this is
# to practice checking in on branches other than master
