Rails.application.routes.draw do
  get 'about', to:'pages#about'
  get 'contact', to:'pages#contact'
  get 'home', to: 'pages#home'

  root :to=> 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
