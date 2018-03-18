Rails.application.routes.draw do

  get 'orgs/index'

  get 'orgs/show'

  devise_for :orgs
  #devise_for :orgs
  devise_for :businesses

  resources :businesses
  resources :orgs

  root to: "pages#welcome"

  get 'pages/welcome'

  get 'pages/about'

  get 'pages/home'

  # get 'businesses/index'

  # get 'businesses/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
