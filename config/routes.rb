Rails.application.routes.draw do
  get "/pages/:page" => "pages#index"
  get 'about', to:'pages#about'
  get 'contact', to:'pages#contact'

  root "pages#index", page: "index"
  # root :to=> 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
