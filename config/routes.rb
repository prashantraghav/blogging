Rails.application.routes.draw do

  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'

  root 'home#index'
  resources :blogs
  resources :profiles

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
