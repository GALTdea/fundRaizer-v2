Rails.application.routes.draw do

  namespace :admin do
    resources :orgs
    resources :businesses
    resources :events

    root to: "orgs#index"
  end

  # get 'events/index'

  # get 'events/show'

  # get 'events/edit'

  resources :events

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


  resources :businesses do
    resources :events
  end

  resources :events do
    member do
      patch :confirmation
      put :confirmation
    end
  end


  # get 'businesses/index'

  # get 'businesses/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
