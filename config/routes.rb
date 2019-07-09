Rails.application.routes.draw do

  root 'pages#home'
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'

  # root "pages#home", page: "home"
  # get "/pages/:page" => "pages#home"
  # get 'about', to:'pages#about'
  # get 'contact', to:'pages#contact'

  # root :to=> 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
