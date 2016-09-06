Rails.application.routes.draw do
  get 'profiles/edit'

  get 'profiles/update'

  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'

  root 'home#index'
  resources :blogs
  resources :profiles #, :only=>[:edit, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
